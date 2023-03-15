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
        // sizeJFo (73:16)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame63pE9 (73:30)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 27*fem, 11*fem),
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
                    // sizePgZ (73:31)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 266*fem, 0*fem),
                    child: Text(
                      'Size',
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
                    // vectorTwK (73:32)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 16*fem,
                    height: 8*fem,
                    child: Image.asset(
                      'assets/upload-page/images/vector-JdK.png',
                      width: 16*fem,
                      height: 8*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame86kvR (73:20)
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame62gJH (73:21)
                    padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 29*fem, 12*fem),
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
                          // largeVWd (73:22)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250*fem, 0*fem),
                          child: Text(
                            'Large',
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
                          // vectorP6D (73:23)
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-M9F.png',
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
                    // frame635Dw (73:24)
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
                          // mediaWKF (73:25)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250*fem, 0*fem),
                          child: Text(
                            'Media',
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
                          // vectorPP3 (73:26)
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-DBs.png',
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
                    // frame64gd3 (73:27)
                    padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 29*fem, 12*fem),
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
                          // small7iM (73:28)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 252*fem, 0*fem),
                          child: Text(
                            'Small',
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
                          // vectoroLH (73:29)
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-jrm.png',
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