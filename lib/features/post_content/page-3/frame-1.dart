import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // frame1X5f (464:36)
        padding: EdgeInsets.fromLTRB(88*fem, 7*fem, 88*fem, 717*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // group14zh (464:41)
              margin: EdgeInsets.fromLTRB(363*fem, 0*fem, 363*fem, 24*fem),
              width: double.infinity,
              height: 100*fem,
              child: Stack(
                children: [
                  Positioned(
                    // ellipse3xKP (464:40)
                    left: 0*fem,
                    top: 0*fem,
                    child: Align(
                      child: SizedBox(
                        width: 100*fem,
                        height: 100*fem,
                        child: Container(
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(50*fem),
                            color: Color(0xff01c3cc),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // biznuggetuiuxdesigncuj (464:37)
                    left: 19*fem,
                    top: 26*fem,
                    child: Align(
                      child: SizedBox(
                        width: 479*fem,
                        height: 48*fem,
                        child: Text(
                          'Biznugget UI/UX Design',
                          style: SafeGoogleFont (
                            'SF UI Text',
                            fontSize: 40*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.193359375*ffem/fem,
                            letterSpacing: -0.2*fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // projectoverview2yT (464:42)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 991*fem, 0*fem),
              child: Text(
                'Project overview',
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 28*ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.14*fem,
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}