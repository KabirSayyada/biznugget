import 'package:biznugget/core/common/models/user_model/user_model.dart';
import 'package:biznugget/core/helpers/Providers/providers.dart';
import 'package:biznugget/profile/Profile_Page/consumer_profile.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ConsumerSignupScreen extends StatefulHookConsumerWidget {
  final UserType type = UserType.consumer;
  ConsumerSignupScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerSignupScreen> createState() =>
      _ConsumerSignupScreenState();
}

class _ConsumerSignupScreenState extends ConsumerState<ConsumerSignupScreen> {
  final _formKey = GlobalKey<FormState>();
  final _firstNameController = TextEditingController();
  final _lastNameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void dispose() {
    _firstNameController.dispose();
    _lastNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

//   Future<void> createUserDocument(User user, String userType) async {
//   await usersCollection.doc(user.uid).set({
//     'email': user.email,
//     'userType': userType
//   });
// }

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
        String firstName, String lastName, String email) async {
      await firestore.collection('users').add({
        'firstName': firstName,
        'lastName': lastName,
        'email': email,
      });
    }

    Future<void> onPressedFunction() async {
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
              context.go('/consumerProfile');
            },
          );

          // add user details
          addUserDetails(_firstNameController.text, _lastNameController.text,
              _emailController.text);
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
                padding: const EdgeInsets.only(top: 15),
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
                    SizedBox(height: height * 0.03),
                    const Text(
                      'Consumer Account',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF830D3F),
                      ),
                    ),
                    SizedBox(height: height * 0.03),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, right: 20),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            TextFormField(
                              controller: _firstNameController,
                              keyboardType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter your name';
                                } else {
                                  // print(value);
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xFF830D3F)
                                          .withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: 'First name',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF830D3F)
                                        .withOpacity(0.3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              onSaved: (value) {
                                // _firstNameController.text = value!;
                              },
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              controller: _lastNameController,
                              keyboardType: TextInputType.name,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a name';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xFF830D3F)
                                          .withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: 'Last name',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF830D3F)
                                        .withOpacity(0.3),
                                  ),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                            ),
                            SizedBox(height: height * 0.02),
                            TextFormField(
                              controller: _emailController,
                              keyboardType: TextInputType.emailAddress,
                              validator: (value) {
                                if (value!.isEmpty || !value.contains('@')) {
                                  return 'Invalid email!';
                                }
                                return null;
                              },
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: const Color(0xFF830D3F)
                                          .withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: 'Email',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF830D3F)
                                        .withOpacity(0.3),
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
                                      color: const Color(0xFF830D3F)
                                          .withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: 'Password',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF830D3F)
                                        .withOpacity(0.3),
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
                                      color: const Color(0xFF830D3F)
                                          .withOpacity(0.3)),
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(10.0)),
                                ),
                                contentPadding: const EdgeInsets.all(10),
                                hintText: 'Confirm Password',
                                hintStyle: const TextStyle(
                                  color: Color(0xFFBCBCBC),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: const Color(0xFF830D3F)
                                        .withOpacity(0.3),
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
                                onPressed: onPressedFunction,
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
                                color: const Color(0xFF000000).withOpacity(0.5),
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

// class ConsumerScreen extends StatefulWidget {
//   const ConsumerScreen({super.key});

//   @override
//   State<ConsumerScreen> createState() => _ConsumerScreenState();
// }

// class _ConsumerScreenState extends State<ConsumerScreen> {
//   var UserType;
//   final _formKey = GlobalKey<FormState>();
//   final _firstNameController = TextEditingController();
//   final _lastNameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   bool _isLoading = false;
//   bool _isLoading2 = false;
//   void loading() {
//     setState(() {
//       _isLoading = !_isLoading;
//     });
//   }

//   void loading2() {
//     setState(() {
//       _isLoading2 = !_isLoading2;
//     });
//   }

//   @override
//   void dispose() {
//     _firstNameController.dispose();
//     _lastNameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   // confirm password fields  use if condition on the signUp method to confirm
//   bool passwordConfirmed() {
//     if (_passwordController.text.trim() ==
//         _confirmPasswordController.text.trim()) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   Future consumerSignUp() async {
//     // create a new user
//     await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim());
//     // add user info
//     addUserDetails(
//       _firstNameController.text.trim(),
//       _lastNameController.text.trim(),
//       _emailController.text.trim(),
//     );
//   }

//   Future addUserDetails(String firstName, String lastName, String email) async {
//     await FirebaseFirestore.instance.collection('users').add({
//       'firstName': firstName,
//       'lastName': lastName,
//       'email': email,
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     return Scaffold(
//       body: Container(
//         height: height,
//         width: width,
//         child: Stack(
//           children: [
//             Positioned.directional(
//               textDirection: TextDirection.ltr,
//               child: Image.asset(
//                 'assets/images/gradient.png',
//                 scale: 1.5,
//               ),
//             ),
//             Positioned(
//               top: 130,
//               left: 310,
//               child: Opacity(
//                 opacity: 0.7,
//                 child: Image.asset(
//                   'assets/images/gradient1.png',
//                   scale: 1.5,
//                   fit: BoxFit.contain,
//                 ),
//               ),
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: Image.asset(
//                 'assets/images/gradient2.png',
//               ),
//             ),
//             SingleChildScrollView(
//               child: Container(
//                 padding: EdgeInsets.only(top: 15),
//                 decoration: const BoxDecoration(color: Colors.transparent),
//                 child: Column(
//                   children: [
//                     Center(
//                       child: Image.asset(
//                         'assets/images/logo1.png',
//                         scale: 1.5,
//                       ),
//                     ),
//                     const Text(
//                       'Sign Up!',
//                       style: TextStyle(
//                         color: Color(0xFF830D3F),
//                         fontSize: 24,
//                         fontWeight: FontWeight.w400,
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     const Text(
//                       'Create a new account',
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFF5C5757),
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),
//                     const Text(
//                       'Consumer Account',
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontWeight: FontWeight.w400,
//                         color: Color(0xFF830D3F),
//                       ),
//                     ),
//                     SizedBox(height: height * 0.03),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20, right: 20),
//                       child: Form(
//                         key: _formKey,
//                         child: Column(
//                           children: [
//                             TextFormField(
//                               controller: _firstNameController,
//                               keyboardType: TextInputType.name,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter your name';
//                                 } else {
//                                   print(value);
//                                 }
//                                 return null;
//                               },
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       color:
//                                           Color(0xFF830D3F).withOpacity(0.3)),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10.0)),
//                                 ),
//                                 contentPadding: EdgeInsets.all(10),
//                                 hintText: 'First name',
//                                 hintStyle: TextStyle(
//                                   color: Color(0xFFBCBCBC),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF830D3F).withOpacity(0.3),
//                                   ),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               onSaved: (value) {
//                                 // _firstNameController.text = value!;
//                               },
//                             ),
//                             SizedBox(height: height * 0.02),
//                             TextFormField(
//                               controller: _lastNameController,
//                               keyboardType: TextInputType.name,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter a name';
//                                 }
//                                 return null;
//                               },
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       color:
//                                           Color(0xFF830D3F).withOpacity(0.3)),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10.0)),
//                                 ),
//                                 contentPadding: EdgeInsets.all(10),
//                                 hintText: 'Last name',
//                                 hintStyle: TextStyle(
//                                   color: Color(0xFFBCBCBC),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF830D3F).withOpacity(0.3),
//                                   ),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: height * 0.02),
//                             TextFormField(
//                               controller: _emailController,
//                               keyboardType: TextInputType.emailAddress,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter a valid email';
//                                 }
//                                 return null;
//                               },
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       color:
//                                           Color(0xFF830D3F).withOpacity(0.3)),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10.0)),
//                                 ),
//                                 contentPadding: EdgeInsets.all(10),
//                                 hintText: 'Email',
//                                 hintStyle: TextStyle(
//                                   color: Color(0xFFBCBCBC),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF830D3F).withOpacity(0.3),
//                                   ),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: height * 0.02),
//                             TextFormField(
//                               controller: _passwordController,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'You need a password';
//                                 }
//                                 return null;
//                               },
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       color:
//                                           Color(0xFF830D3F).withOpacity(0.3)),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10.0)),
//                                 ),
//                                 contentPadding: EdgeInsets.all(10),
//                                 hintText: 'Password',
//                                 hintStyle: const TextStyle(
//                                   color: Color(0xFFBCBCBC),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF830D3F).withOpacity(0.3),
//                                   ),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: height * 0.02),
//                             TextFormField(
//                               controller: _confirmPasswordController,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Password must match';
//                                 }
//                                 return null;
//                               },
//                               decoration: InputDecoration(
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                       color:
//                                           Color(0xFF830D3F).withOpacity(0.3)),
//                                   borderRadius:
//                                       BorderRadius.all(Radius.circular(10.0)),
//                                 ),
//                                 contentPadding: EdgeInsets.all(10),
//                                 hintText: 'Confirm Password',
//                                 hintStyle: const TextStyle(
//                                   color: Color(0xFFBCBCBC),
//                                 ),
//                                 enabledBorder: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     color: Color(0xFF830D3F).withOpacity(0.3),
//                                   ),
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                             ),
//                             SizedBox(height: height * 0.02),
//                             Container(
//                               height: 50,
//                               width: 142,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(20),
//                                 gradient: const LinearGradient(
//                                   colors: [
//                                     Color(0xFF01C3CC),
//                                     Color(0xFF3F56F2),
//                                   ],
//                                   begin: Alignment.center,
//                                   end: Alignment.bottomCenter,
//                                 ),
//                               ),
//                               child: TextButton(
//                                 child: const Text(
//                                   'Sign Up',
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 20,
//                                     fontWeight: FontWeight.w400,
//                                   ),
//                                 ),
//                                 onPressed: () {
//                                   if (_formKey.currentState!.validate()) {
//                                     ScaffoldMessenger.of(context).showSnackBar(
//                                       const SnackBar(
//                                           content: Text('Processing Data')),
//                                     );
//                                   }
//                                 },
//                               ),
//                             ),
//                             SizedBox(height: height * 0.02),
//                             const Divider(
//                               height: 1,
//                               color: Color(0xFF830D3F),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                     SizedBox(height: height * 0.02),
//                     Align(
//                       alignment: Alignment.bottomLeft,
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: [
//                             Text(
//                               'Already have an account?',
//                               style: TextStyle(
//                                 color: Color(0xFF000000).withOpacity(0.5),
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.w400,
//                               ),
//                             ),
//                             TextButton(
//                               onPressed: () {},
//                               child: const Text(
//                                 'Log In',
//                                 style: TextStyle(
//                                   fontSize: 24,
//                                   fontWeight: FontWeight.w400,
//                                   color: Color(0xFF830D3F),
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }