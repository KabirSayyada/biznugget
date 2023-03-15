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
        // genderoZP (73:15)
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame61K1w (73:2)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
              padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 25*fem, 11*fem),
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
                    // gendertUM (73:3)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 249*fem, 0*fem),
                    child: Text(
                      'Gender',
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
                    // vector9v5 (73:4)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                    width: 16*fem,
                    height: 8*fem,
                    child: Image.asset(
                      'assets/upload-page/images/vector-D4Z.png',
                      width: 16*fem,
                      height: 8*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame862ys (73:14)
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame62wqw (73:5)
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
                          // femaleMPs (73:6)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 248*fem, 0*fem),
                          child: Text(
                            'Female',
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
                          // vectord6V (73:7)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-djB.png',
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
                    // frame63Hwj (73:8)
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
                          // maleuy7 (73:9)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 258*fem, 0*fem),
                          child: Text(
                            'Male',
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
                          // vectorzjf (73:10)
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-ByF.png',
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
                    // frame64h8H (73:11)
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
                          // unisexK9f (73:12)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250*fem, 0*fem),
                          child: Text(
                            'Unisex',
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
                          // vectorbN5 (73:13)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                          width: 16*fem,
                          height: 8*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-3sT.png',
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