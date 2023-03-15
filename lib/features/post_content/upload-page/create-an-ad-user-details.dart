import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // createanaduserdetailsHsB (71:11685)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12Y2R (71:11686)
              padding: EdgeInsets.fromLTRB(16*fem, 37*fem, 19*fem, 21*fem),
              width: double.infinity,
              height: 82*fem,
              decoration: BoxDecoration (
                border: const Border (
                ),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x56000000),
                    offset: Offset(0*fem, 2*fem),
                    blurRadius: 1*fem,
                  ),
                ],
              ),
              child: SizedBox(
                // frame79mvm (71:11769)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame44VLy (71:11688)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 0*fem),
                      width: 14*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-44-GNq.png',
                        width: 14*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // createanadAT7 (71:11690)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                      child: Text(
                        'create an ad',
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 20*ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.05*fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      // frame32QsF (71:11767)
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-32.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogrouparub6zy (RTerkRBedGm3jph7fmArUb)
              padding: EdgeInsets.fromLTRB(16*fem, 12*fem, 16*fem, 27*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group2bgq (71:11733)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    width: double.infinity,
                    height: 17*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group156D (71:11734)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 6*fem, 5*fem),
                          width: 314*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            // rectangle39bs (71:11736)
                            child: SizedBox(
                              width: double.infinity,
                              height: 6*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  color: const Color(0xff01c3cc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // pxu (71:11737)
                          '3/3',
                          style: SafeGoogleFont (
                            'SF UI Text',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.193359375*ffem/fem,
                            letterSpacing: -0.035*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame788To (71:11693)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 99*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          // frame48EFw (71:11694)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // namexBw (71:11695)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Text(
                                  'Name',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                              Container(
                                // frame48Ddf (71:11696)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x1e000000),
                                      offset: Offset(2*fem, 2*fem),
                                      blurRadius: 1*fem,
                                    ),
                                    BoxShadow(
                                      color: const Color(0x1e000000),
                                      offset: Offset(0*fem, 0*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0*fem, 2*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'Roselyn Inyang',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12*fem,
                        ),
                        SizedBox(
                          // frame60MNV (71:11699)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // phonenumberg9s (71:11700)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                child: Text(
                                  'Phone Number',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                              Container(
                                // frame61M17 (71:11701)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 11*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x1e000000),
                                      offset: Offset(2*fem, 2*fem),
                                      blurRadius: 1*fem,
                                    ),
                                    BoxShadow(
                                      color: const Color(0x1e000000),
                                      offset: Offset(0*fem, 0*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0*fem, 2*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  '0912222009',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12*fem,
                        ),
                        SizedBox(
                          // frame62JaZ (71:11703)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // emailpJ1 (71:11704)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                child: Text(
                                  'Email',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                              Container(
                                // frame61V9F (71:11705)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x1e000000),
                                      offset: Offset(2*fem, 2*fem),
                                      blurRadius: 1*fem,
                                    ),
                                    BoxShadow(
                                      color: const Color(0x1e000000),
                                      offset: Offset(0*fem, 0*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                    BoxShadow(
                                      color: const Color(0x3f000000),
                                      offset: Offset(0*fem, 2*fem),
                                      blurRadius: 0.5*fem,
                                    ),
                                  ],
                                ),
                                child: Text(
                                  'Josephroselyn20@gmail.com',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame27ewF (71:11765)
                    margin: EdgeInsets.fromLTRB(41*fem, 0*fem, 64*fem, 251*fem),
                    width: double.infinity,
                    height: 41*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(5*fem),
                      gradient: const LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0.37, 1.529),
                        colors: <Color>[Color(0xff01c3cc), Color(0xff3f56f2)],
                        stops: <double>[0, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x1e000000),
                          offset: Offset(2*fem, 2*fem),
                          blurRadius: 1*fem,
                        ),
                        BoxShadow(
                          color: const Color(0x1e000000),
                          offset: Offset(-2*fem, -2*fem),
                          blurRadius: 1*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Preview',
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.045*fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // byclickingonpublishyouacceptth (71:11738)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 336*fem,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.03*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'By clicking on Publish, you accept the ',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff830d3f),
                            ),
                          ),
                          TextSpan(
                            text: ', follow\nsafety tips, and verify this post does not contain prohibited \nitems.',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}