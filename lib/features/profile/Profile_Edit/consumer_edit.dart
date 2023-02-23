import 'package:biznugget/core/utils/curve_image.dart';
import 'package:biznugget/features/profile/Profile_Page/business_profile.dart';
import 'package:biznugget/features/profile/Profile_Page/user_details.dart';
import 'package:flutter/material.dart';

import '../Profile_Page/profile_pic.dart';

class ConsumerProfileEdit extends StatefulWidget {
  const ConsumerProfileEdit({super.key});

  @override
  State<ConsumerProfileEdit> createState() => _ConsumerProfileEditState();
}

class _ConsumerProfileEditState extends State<ConsumerProfileEdit> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _dobCOntroller = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
              top: 8,
              end: 2,
              child: Image.asset(
                'assets/images/rightside.png',
                scale: 1.5,
                fit: BoxFit.contain,
              ),
            ),
            Positioned.directional(
              textDirection: TextDirection.ltr,
              top: 10,
              child: Opacity(
                opacity: 1,
                child: Image.asset(
                  'assets/images/leftside2.png',
                  scale: 1.4,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            ClipPath(
              clipper: CurveImage(),
              child: Container(
                padding: EdgeInsets.only(top: 20, left: 10, right: 10),
                height: height * 0.35,
                width: width,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: GestureDetector(
                        child: Image.asset(
                          'assets/images/arrowback.png',
                          scale: 1.5,
                        ),
                        onTap: () {},
                      ),
                    ),
                    ProfilePic(
                      imagePath: 'assets/images/image1.png',
                    ),
                    UserDetails(
                      name: 'Jennifer Orya',
                      userAccount: 'Consumer',
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  physics: NeverScrollableScrollPhysics(),
                  child: Container(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    height: height * 0.57,
                    width: width,
                    decoration: BoxDecoration(),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 160,
                              child: TextFormField(
                                controller: _firstNameController,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('First name'),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: 'First name',
                                  hintStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF830D3F).withOpacity(0.3),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 160,
                              child: TextFormField(
                                controller: _lastNameController,
                                keyboardType: TextInputType.name,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  label: Text('Last name'),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  hintText: 'Last name',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF830D3F).withOpacity(0.3),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 220,
                              child: TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  label: Text('Email'),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  hintText: 'Email',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF830D3F).withOpacity(0.3),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 50,
                              width: 90,
                              child: TextFormField(
                                controller: _dobCOntroller,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  label: Text('D.O.B'),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  hintText: 'D.O.B',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF830D3F).withOpacity(0.3),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 160,
                              child: TextFormField(
                                controller: _phoneNumberController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  label: Text(
                                    'Phone number',
                                    style: TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  labelStyle:
                                      TextStyle(color: Color(0xff55757)),
                                  hintText: 'Phone Number',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF830D3F).withOpacity(0.3),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 320,
                              child: TextFormField(
                                controller: _addressController,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  label: Text('Address'),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  hintText: 'Address',
                                  enabledBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                      color: Color(0xFF830D3F).withOpacity(0.3),
                                    ),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * 0.05,
                        ),
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
                              'Update',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
