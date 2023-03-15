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
        // postcontent2UD3 (191:89)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame12vaq (191:90)
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
                // frame31Zth (191:91)
                width: 243*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame32VXT (191:92)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 0*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-32-hKB.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Text(
                      // postcontentnFf (191:94)
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
              // whatdoyouwanttodo4ys (191:95)
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
              // autogroupkzv9wnm (RTivceAxn4d9ouKdXCkzV9)
              padding: EdgeInsets.fromLTRB(19*fem, 18*fem, 20*fem, 229*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupamzt3au (RTisiopwyQxdG1aiKpAmzT)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                    width: double.infinity,
                    height: 135*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame33wRP (191:96)
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
                                // frame429nM (191:97)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-42-ULV.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame413cq (191:432)
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
                          // frame437Mo (191:434)
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
                                // frame39k9s (191:435)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-39-h6u.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame40RWu (191:619)
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
                  SizedBox(
                    height: 16*fem,
                  ),
                  Container(
                    // autogroupcayj55f (RTitiHBBn3TeespqKFcAYj)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 0*fem),
                    width: double.infinity,
                    height: 135*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame44yRw (191:621)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
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
                                // frame43bTK (191:622)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-GB7.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame415dP (191:867)
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
                          // frame45xBP (191:1650)
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
                                // frame44PGh (191:1898)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-44-xm3.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame454td (191:2029)
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
                  SizedBox(
                    height: 16*fem,
                  ),
                  SizedBox(
                    // autogroupbdj3KZf (RTiucFgarPMctVgRNnBDJ3)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame413Em (191:869)
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
                                // frame43U5B (191:870)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 7*fem),
                                width: 94*fem,
                                height: 78*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-r13.png',
                                  width: 94*fem,
                                  height: 78*fem,
                                ),
                              ),
                              Container(
                                // frame41m4H (191:1326)
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
                          // frame46d6V (270:6588)
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
                                // frame43qyF (270:6589)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-fad.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41Xr5 (270:6774)
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