import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 343;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // productconditionhZw (73:33)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame59D2V (73:47)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 26*fem, 11*fem),
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // productconditioncaR (73:48)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 186*fem, 0*fem),
                    child: Text(
                      'Product condition',
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
                  Container(
                    // vectort29 (73:49)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 16*fem,
                    height: 8*fem,
                    child: Image.asset(
                      'assets/upload-page/images/vector-Y5B.png',
                      width: 16*fem,
                      height: 8*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame86Ni1 (73:37)
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame62tAZ (73:38)
                    padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 28*fem, 11*fem),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // newurM (73:39)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 262*fem, 0*fem),
                          child: Text(
                            'New',
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
                        Container(
                          // vectorCKf (73:40)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-Hxq.png',
                            width: 16*fem,
                            height: 8*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12*fem,
                  ),
                  Container(
                    // frame63GaR (73:41)
                    padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 28*fem, 12*fem),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // foreignused63f (73:42)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 203*fem, 0*fem),
                          child: Text(
                            'Foreign used',
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
                        SizedBox(
                          // vectorN1B (73:43)
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-48D.png',
                            width: 16*fem,
                            height: 8*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 12*fem,
                  ),
                  Container(
                    // frame644eh (73:44)
                    padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 27*fem, 12*fem),
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
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // nigeriausedUyK (73:45)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 207*fem, 0*fem),
                          child: Text(
                            'Nigeria used',
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
                        SizedBox(
                          // vectorMXK (73:46)
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-4sX.png',
                            width: 16*fem,
                            height: 8*fem,
                          ),
                        ),
                      ],
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