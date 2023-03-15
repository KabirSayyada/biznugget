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
        // postcontent2869 (81:44)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame12nRb (81:45)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 23*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 39*fem, 16*fem, 19*fem),
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
                // frame31mgq (81:46)
                width: 243*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame32fnD (81:47)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 0*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-32-b4Z.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Text(
                      // postcontentwjj (81:49)
                      'Post content',
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
              // whatdoyouwanttodoDSM (81:50)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 0*fem),
              child: Text(
                'What do you want to do?',
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
              // autogroupa38f5jT (RTfHRTaB9LpYezZ7jBa38f)
              padding: EdgeInsets.fromLTRB(19*fem, 18*fem, 20*fem, 229*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogrouphrzdmcH (RTfFpfuT29U5h5WfK3HRZD)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 16*fem),
                    width: double.infinity,
                    height: 135*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame33rdj (81:51)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 2*fem),
                          width: 157*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffebebeb),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(2*fem, 2*fem),
                                blurRadius: 1*fem,
                              ),
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(-2*fem, 0*fem),
                                blurRadius: 1*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame42GhT (81:52)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-42.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41k6q (81:387)
                                width: double.infinity,
                                height: 37*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xffa6a6a6)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Post an ad',
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
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame43Bxq (81:1605)
                          padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 2*fem),
                          width: 157*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffebebeb),
                            border: const Border (
                            ),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(2*fem, 2*fem),
                                blurRadius: 1*fem,
                              ),
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(-2*fem, 0*fem),
                                blurRadius: 1*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame39i5b (81:1943)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-39-YXF.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame40nr9 (81:2127)
                                width: double.infinity,
                                height: 37*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xffa6a6a6)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Share a service',
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupmxesqZX (RTfGK5FnndFs1rrR7amXEs)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 15*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame39jeu (81:389)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 1*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 2*fem),
                          width: 157*fem,
                          decoration: BoxDecoration (
                            color: const Color(0xffebebeb),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(2*fem, 2*fem),
                                blurRadius: 1*fem,
                              ),
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(-2*fem, 0*fem),
                                blurRadius: 1*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame43kpu (81:390)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-BGh.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41rN9 (81:635)
                                width: double.infinity,
                                height: 37*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xffa6a6a6)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Post job openings',
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
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame40hNm (81:1284)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 2*fem),
                          width: 157*fem,
                          decoration: BoxDecoration (
                            color: const Color(0xffebebeb),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(2*fem, 2*fem),
                                blurRadius: 1*fem,
                              ),
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(-2*fem, 0*fem),
                                blurRadius: 1*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame43uUq (81:1285)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-UA1.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41CTw (81:1416)
                                width: double.infinity,
                                height: 37*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xffa6a6a6)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Build a portfolio',
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
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    // autogroupvdx1Fh7 (RTfGoovugwWNiHyUcJVDX1)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame41BKs (81:637)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 2*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 11*fem, 0*fem, 2*fem),
                          width: 157*fem,
                          decoration: BoxDecoration (
                            color: const Color(0xffebebeb),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(2*fem, 2*fem),
                                blurRadius: 1*fem,
                              ),
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(-2*fem, 0*fem),
                                blurRadius: 1*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame43b8h (81:638)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 7*fem),
                                width: 94*fem,
                                height: 78*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-vbf.png',
                                  width: 94*fem,
                                  height: 78*fem,
                                ),
                              ),
                              Container(
                                // frame41HGR (81:1094)
                                width: double.infinity,
                                height: 37*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xffa6a6a6)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Source an expert',
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
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame44LEh (270:7152)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 2*fem),
                          width: 157*fem,
                          decoration: BoxDecoration (
                            color: const Color(0xffebebeb),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(2*fem, 2*fem),
                                blurRadius: 1*fem,
                              ),
                              BoxShadow(
                                color: const Color(0x3f000000),
                                offset: Offset(-2*fem, 0*fem),
                                blurRadius: 1*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // frame438RT (270:7153)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-nYd.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41DC1 (270:7338)
                                width: double.infinity,
                                height: 37*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xffa6a6a6)),
                                ),
                                child: Center(
                                  child: Text(
                                    'Add an item',
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
          ],
        ),
      ),
          );
  }
}