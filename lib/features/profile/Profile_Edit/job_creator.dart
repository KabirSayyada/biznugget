import 'package:flutter/material.dart';

import '../../../core/utils/curve_image.dart';
import '../Profile_Page/profile_pic.dart';
import '../Profile_Page/user_details.dart';

class JobCreatorProfileEdit extends StatefulWidget {
  const JobCreatorProfileEdit({super.key});

  @override
  State<JobCreatorProfileEdit> createState() => _JobCreatorProfileEditState();
}

class _JobCreatorProfileEditState extends State<JobCreatorProfileEdit> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
                      imagePath: 'assets/images/jobcreator.png',
                    ),
                    UserDetails(
                      name: 'Careers NG',
                      userAccount: 'Job Creator',
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Form(
                key: _formKey,
                child: Container(
                  padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                  height: height * 0.57,
                  width: width,
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 350,
                          child: TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: Text('Company name'),
                              labelStyle: TextStyle(
                                color: Colors.black,
                              ),
                              hintText: 'Company name',
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Color(0xFF830D3F).withOpacity(0.3),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 300,
                              child: TextFormField(
                                controller: _emailController,
                                keyboardType: TextInputType.emailAddress,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(),
                                  label: Text('Email'),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  contentPadding: EdgeInsets.all(10),
                                  hintText: 'Email',
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
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 180,
                              child: TextFormField(
                                controller: _phoneNumberController,
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10)),
                                  label: Text('Phone number'),
                                  labelStyle: TextStyle(
                                    color: Colors.black,
                                  ),
                                  hintText: 'Phone number',
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
                              width: 150,
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
                                  'Job Type',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xFFBCBCBC),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: height * 0.02),
                        Container(
                          height: 50,
                          width: 350,
                          child: TextFormField(
                            controller: _addressController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              label: Text(
                                'Address',
                                style: TextStyle(
                                  color: Colors.black,
                                ),
                              ),
                              labelStyle: TextStyle(color: Color(0xff55757)),
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
                        SizedBox(
                          height: height * 0.03,
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
