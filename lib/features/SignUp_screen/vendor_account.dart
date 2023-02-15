import 'package:flutter/material.dart';

class VendorScreen extends StatefulWidget {
  const VendorScreen({super.key});

  @override
  State<VendorScreen> createState() => _VendorScreenState();
}

class _VendorScreenState extends State<VendorScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  'assets/images/gradient.png',
                ),
                alignment: Alignment.topLeft),
          ),
          child: Container(
            padding: EdgeInsets.only(top: 15),
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
                    fontFamily: "Great Sailor",
                  ),
                ),
                SizedBox(height: height * 0.02),
                const Text(
                  'Create a new account',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF5C5757),
                      fontFamily: 'Great Sailor'),
                ),
                SizedBox(height: height * 0.03),
                const Text(
                  'Vendor Account',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF830D3F),
                  ),
                ),
                SizedBox(height: height * 0.03),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      Container(
                        height: height * 0.07,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Name',
                            hintStyle: TextStyle(
                              color: Color(0xFFBCBCBC),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.07,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Address',
                            hintStyle: TextStyle(
                              color: Color(0xFFBCBCBC),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.07,
                        child: TextFormField(
                          keyboardType: TextInputType.emailAddress,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(
                              color: Color(0xFFBCBCBC),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.07,
                        child: TextFormField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Phone number',
                            hintStyle: TextStyle(
                              color: Color(0xFFBCBCBC),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.07,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Password',
                            hintStyle: const TextStyle(
                              color: Color(0xFFBCBCBC),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: height * 0.02),
                      Container(
                        height: height * 0.07,
                        child: TextFormField(
                          decoration: InputDecoration(
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            hintText: 'Confirm Password',
                            hintStyle: const TextStyle(
                              color: Color(0xFFBCBCBC),
                            ),
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
                          onPressed: () {},
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
      ),
    );
  }
}
