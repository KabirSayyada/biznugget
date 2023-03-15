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
        // postcontent2bq7 (208:2)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 546*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame12Sqj (208:3)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 35*fem, 16*fem, 21*fem),
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
                // frame31Gpm (208:4)
                width: 245*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame44CCd (208:1578)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 2*fem),
                      width: 14*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-44-srM.png',
                        width: 14*fem,
                        height: 16*fem,
                      ),
                    ),
                    Text(
                      // buildaportfolio5XK (208:7)
                      'Build a Portfolio',
                      style: SafeGoogleFont (
                        'SF UI Text',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575*ffem/fem,
                        letterSpacing: -0.05*fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // makeyourportfolioyourprofessio (263:111)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 259*fem,
              ),
              child: Text(
                'Make your portfolio your professional calling\ncard to stand out in our community.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2575*ffem/fem,
                  letterSpacing: -0.035*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // whoistheportfolioforkms (208:8)
              margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 43*fem),
              child: Text(
                'Who is the portfolio for?',
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 16*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.04*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupy8ur2jP (RTizGhkHGNyAR21HvWy8uR)
              margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 129*fem, 0*fem),
              width: double.infinity,
              height: 43*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame844v45 (208:1564)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                    width: 93*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0x4c000000)),
                      color: const Color(0xff01c3cc),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x3f000000),
                          offset: Offset(4*fem, 4*fem),
                          blurRadius: 2*fem,
                        ),
                        BoxShadow(
                          color: const Color(0x2d000000),
                          offset: Offset(0*fem, 2*fem),
                          blurRadius: 1*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Personal',
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2575*ffem/fem,
                          letterSpacing: -0.04*fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // frame845Uzh (208:1565)
                    width: 93*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0x4c000000)),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Company',
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 16*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.04*fem,
                          color: const Color(0xff000000),
                        ),
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