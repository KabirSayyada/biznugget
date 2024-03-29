
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

import '../core/common/widgets/custom_formfield.dart';
import '../core/common/widgets/social_media_buttons.dart';
import 'view_model/login_controler.dart';
import 'view_model/login_state.dart';

class SigninScreen extends ConsumerStatefulWidget {
  const SigninScreen({super.key});

  @override
  ConsumerState<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends ConsumerState<SigninScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    ref.listen<LoginState>(loginControllerProvider, ((previous, state) {
      if (state is LoginStateError) {
        ScaffoldMessenger.of(context)
            .showSnackBar(SnackBar(content: Text(state.error)));
      }
    }));
    return GestureDetector(
      onTap: () {
        //unfocuses the textfield if users click anywhere on the screen
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }
      },
      child: Container(
        height: height,
        width: width,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/signin_bg.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, bottom: 30),
                  child: Center(
                    child: SizedBox(
                      height: height * 0.10,
                      width: width / 2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'assets/images/biznugget_logo1.png',
                            height: 30,
                          ),
                          Container(
                            height: 30,
                            width: 3,
                            color: const Color(0xFFECCA5D),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5.0),
                            child: Text(
                              'BIZNUGGET',
                              style: GoogleFonts.londrinaSolid(fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                const Text('Sign In!',
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF830D3F))),
                const SizedBox(height: 10),
                const Text('Welcome back to Biznugget',
                    style: TextStyle(fontSize: 15)),
                Padding(
                  padding: const EdgeInsets.fromLTRB(25.0, 40.0, 25, 10.0),
                  child: Column(
                    children: [
                      Wrap(
                        children: [
                          const Text(
                            'E-mail',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          CustomFormField(
                            textController: emailController,
                            hintText: 'Enter E-mail',
                            isObscure: !_isObscure,
                          ),
                        ],
                      ),
                      SizedBox(height: height * 0.02),
                      Wrap(
                        runAlignment: WrapAlignment.start,
                        children: [
                          const Text(
                            'Password',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                          ),
                          CustomFormField(
                            textController: passwordController,
                            hintText: 'Enter Password',
                            isObscure: _isObscure,
                            suffixIcon: IconButton(
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                                icon: Icon(_isObscure
                                    ? Icons.visibility_off
                                    : Icons.visibility),
                                iconSize: 30,
                                color: const Color(0xFFAFAFAF)),
                          ),
                        ],
                      ),
                      Align(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                            onPressed: () {
                              //naviagtes to password reset page
                            },
                            child: const Text(
                              'Forgot Password?',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xFF212121)),
                            ),
                          )),
                      Padding(
                        padding:
                            const EdgeInsets.fromLTRB(0.0, 25.0, 0.0, 20.0),
                        child: MaterialButton(
                          onPressed: () {
                            ref.read(loginControllerProvider.notifier).login(
                                emailController.text, passwordController.text);
                          },
                          height: 40,
                          minWidth: width / 2,
                          color: const Color(0xFF01C3CC),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * 0.03,
                        child: Text('Or continue with',
                            style: GoogleFonts.poppins(
                                color: const Color(0xFFDCDCDC),
                                fontSize: 18,
                                fontWeight: FontWeight.w500)),
                      ),
                      SizedBox(height: height * 0.02),
                      FittedBox(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SocialMediaButtons(
                              height: height * 0.12,
                              width: width / 3,
                              elevation: 5.0,
                              onTap: () {
                                ref
                                    .read(loginControllerProvider.notifier)
                                    .loginWithGoogle();
                                // _googleSignIn
                              },
                              widget: Image.asset('assets/images/google.png'),
                            ),
                            SocialMediaButtons(
                              height: height * 0.12,
                              width: width / 3,
                              elevation: 5.0,
                              onTap: () {
                                // _twitterSignIn(context);
                              },
                              widget: Image.asset('assets/images/twitter.png'),
                            ),
                            SocialMediaButtons(
                              height: height * 0.12,
                              width: width / 3,
                              elevation: 5.0,
                              onTap: () {
                                ref
                                    .read(loginControllerProvider.notifier)
                                    .loginWithFacebook();
                                // _facebookSignIn
                              },
                              widget: Image.asset('assets/images/facebook.png'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('Don\'t have an account',
                        style: TextStyle(
                          fontSize: 16,
                        )),
                    TextButton(
                        onPressed: () {
                          //naviagtes to the registration page
                        },
                        child: const Text(
                          'Sign Up here',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF11C7CF)),
                        ))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
