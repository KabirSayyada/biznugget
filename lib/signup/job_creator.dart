import 'package:biznugget/core/common/models/user_model/user_model.dart';
import 'package:biznugget/core/helpers/Providers/providers.dart';
import 'package:biznugget/profile/Profile_Page/Job_creator/job_creator_profile.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class JobCreatorSignupScreen extends StatefulHookConsumerWidget {
  JobCreatorSignupScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<JobCreatorSignupScreen> createState() =>
      _JobCreatorSignupScreenState();
}

class _JobCreatorSignupScreenState
    extends ConsumerState<JobCreatorSignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final UserType type = UserType.jobCreator;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneNumberController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  bool _isLoading = false;
  void loading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  // confirm password fields  use if condition on the signUp method to confirm
  bool passwordConfirmed() {
    if (_passwordController.text.trim() ==
        _confirmPasswordController.text.trim()) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    final auth = ref.watch(authenticationProvider);

    // add user details
    Future<void> addUserDetails(
        String name, String email, String phoneNumber) async {
      await firestore.collection('users').add({
        'name': name,
        'email': email,
        'phoneNumber': phoneNumber,
      });
    }

    Future<void> _onPressedFunction() async {
      if (_formKey.currentState!.validate()) {
        const CircularProgressIndicator();
        loading();

        if (passwordConfirmed()) {
          // create user with email and password
          await auth
              .signUpWithEmailAndPassword(
                  _emailController.text, _passwordController.text, context)
              .whenComplete(() => auth.authStateChange.listen((event) async {
                    if (event == null) {
                      loading();
                      return;
                    }
                  }))
              .then(
            (value) {
              context.go('/jobCreatorProfile');
            },
          );

          // add user details
          addUserDetails(_nameController.text, _emailController.text,
              _phoneNumberController.text);
        }
      }
      print(_emailController.text);
      print(_passwordController.text);
    }

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: [
            Positioned.directional(
              textDirection: TextDirection.ltr,
              child: Image.asset(
                'assets/images/gradient.png',
                scale: 1.5,
              ),
            ),
            Positioned(
              top: 130,
              left: 310,
              child: Opacity(
                opacity: 0.7,
                child: Image.asset(
                  'assets/images/gradient1.png',
                  scale: 1.5,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image.asset(
                'assets/images/gradient2.png',
              ),
            ),
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(top: 10),
                decoration: const BoxDecoration(color: Colors.transparent),
                child: Column(
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/logo1.png',
                        scale: 1.5,
                      ),
                    ),
                    const Text(
                      'Sign Up!',
                      style: TextStyle(
                        color: Color(0xFF830D3F),
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    const Text(
                      'Create a new account',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF5C5757),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    const Text(
                      'Job Creator',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF830D3F),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _nameController,
                              keyboardType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color(0xFF830D3F).withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'Name',
                                hintStyle: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF830D3F).withOpacity(0.3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              keyboardType: TextInputType.emailAddress,
                              controller: _emailController,
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Invalid email!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color(0xFF830D3F).withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'Email',
                                hintStyle: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF830D3F).withOpacity(0.3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            Container(
                              height: height * 0.07,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                  color: Color(0xFF830D3F).withOpacity(0.3),
                                ),
                              ),
                              child: ListTile(
                                trailing: IconButton(
                                    onPressed: () {},
                                    icon: const Icon(
                                      Icons.keyboard_arrow_down,
                                    )),
                                title: const Text(
                                  'Job type',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              controller: _phoneNumberController,
                              keyboardType: TextInputType.phone,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter phone number';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color(0xFF830D3F).withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'Phone number',
                                hintStyle: TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF830D3F).withOpacity(0.3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              controller: _passwordController,
                              validator: (value) {
                                if (value!.isEmpty || value.length < 8) {
                                  return 'Password is too short!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color(0xFF830D3F).withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'Password',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF830D3F).withOpacity(0.3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              controller: _confirmPasswordController,
                              validator: (value) {
                                if (value != _passwordController.text) {
                                  return 'Passwords do not match!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color:
                                          Color(0xFF830D3F).withOpacity(0.3)),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                ),
                                contentPadding: EdgeInsets.all(10),
                                hintText: 'Confirm Password',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Color(0xFF830D3F).withOpacity(0.3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            Container(
                              height: 50,
                              width: 142,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF01C3CC),
                                    Color(0xFF3F56F2),
                                  ],
                                  begin: Alignment.center,
                                  end: Alignment.bottomCenter,
                                ),
                              ),
                              child: TextButton(
                                child: const Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                onPressed: () async {
                                  if (_formKey.currentState!.validate()) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Processing Data')),
                                    );
                                  }
                                  loading();
                                  await auth
                                      .signUpWithEmailAndPassword(
                                          _emailController.text,
                                          _passwordController.text,
                                          context)
                                      .whenComplete(
                                        () => auth.authStateChange.listen(
                                          (event) async {
                                            if (event == null) {
                                              loading();
                                              return;
                                            }
                                          },
                                        ),
                                      )
                                      .then(
                                    (value) {
                                      Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const JobCreatorProfile()),
                                      );
                                    },
                                  );
                                },
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            const Divider(
                              height: 1,
                              color: Color(0xFF830D3F),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Already have an account?',
                              style: TextStyle(
                                color: Color(0xFF000000).withOpacity(0.5),
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            TextButton(
                              onPressed: () {},
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xFF830D3F),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
