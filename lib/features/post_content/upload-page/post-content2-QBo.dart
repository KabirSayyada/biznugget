import 'package:biznugget/utils/utils.dart';
import 'package:flutter/material.dart';

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
        // postcontent2v2R (266:290)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 546*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame12moj (266:291)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 35*fem, 16*fem, 23*fem),
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
                // frame31Dfj (266:292)
                width: 262*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame44wbj (266:293)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 88*fem, 0*fem),
                      width: 14*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-44-zdB.png',
                        width: 14*fem,
                        height: 16*fem,
                      ),
                    ),
                    Text(
                      // buildaportfolioqBK (266:295)
                      'Build a Portfolio',
                      style: SafeGoogleFont (
                        'SF UI Text',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.193359375*ffem/fem,
                        letterSpacing: -0.05*fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // makeyourportfolioyourprofessio (266:297)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 299*fem,
              ),
              child: Text(
                'Make your portfolio your professional calling\ncard to stand out in our community.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.035*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // whoistheportfolioforC3o (266:296)
              margin: EdgeInsets.fromLTRB(17*fem, 0*fem, 0*fem, 43*fem),
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
              // autogroupwjjucdK (RTj6UwZhb3nbYbLseowJju)
              margin: EdgeInsets.fromLTRB(24*fem, 0*fem, 129*fem, 0*fem),
              width: double.infinity,
              height: 43*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame844JFF (266:298)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                    width: 93*fem,
                    height: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0x4c000000)),
                      color: const Color(0xffffffff),
                    ),
                    child: Center(
                      child: Text(
                        'Personal',
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
                  Container(
                    // frame8457iV (266:300)
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