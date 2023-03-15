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
        // postcontent2tJy (137:2)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame128DK (137:3)
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
                // frame31Ynq (137:4)
                width: 243*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame32TQ1 (137:5)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 0*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-32-ftq.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Text(
                      // postcontentv2h (137:7)
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
              // whatdoyouwanttodoPws (137:8)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 0*fem),
              child: Text(
                'What do you want to do?',
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
            Container(
              // autogrouphhwqs6M (RTiRZouebmze2nC1YsHhwq)
              padding: EdgeInsets.fromLTRB(19*fem, 16*fem, 20*fem, 229*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupxntkZE5 (RTiNXp8ZzA3DLRp7t9xNtK)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 16*fem),
                    width: double.infinity,
                    height: 135*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame33F6u (137:9)
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
                                // frame42fRX (137:10)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-42-xd3.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41wdw (137:345)
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
                                      height: 1.2575*ffem/fem,
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
                          // frame43BHP (137:347)
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
                                // frame39pLM (137:348)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-39-a2h.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame406Hs (137:532)
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
                    // autogroupmkfu91F (RTiPYXwj3fmUdVEdikmkfu)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 15*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame44F4H (137:1811)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 1*fem),
                          padding: EdgeInsets.fromLTRB(0*fem, 12*fem, 0*fem, 2*fem),
                          width: 157*fem,
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
                                // frame43SeZ (137:1998)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-4qs.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41jtZ (137:2243)
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
                          // frame40bfs (137:1429)
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
                                // frame43DhF (137:1430)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-aLu.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame417Gq (137:1561)
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
                    // autogrouplnukNCm (RTiQVLhjmcaf39EKAnLNUK)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame41J6R (137:782)
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
                                // frame43Vgh (137:783)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 7*fem),
                                width: 94*fem,
                                height: 78*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-u7s.png',
                                  width: 94*fem,
                                  height: 78*fem,
                                ),
                              ),
                              Container(
                                // frame41ay3 (137:1239)
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
                          // frame45qPB (270:6776)
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
                                // frame43r3P (270:6777)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-pQM.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41XvD (270:6962)
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