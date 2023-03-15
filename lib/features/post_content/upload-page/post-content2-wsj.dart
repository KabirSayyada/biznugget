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
        // postcontent2N5b (269:2778)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame122vq (269:2779)
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
                // frame31tTF (269:2780)
                width: 243*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame32c8M (269:2781)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 0*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-32-FoB.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Text(
                      // postcontenttbf (269:2783)
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
              // whatdoyouwanttodonh3 (269:2784)
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
              // autogroupgjfu4eZ (RTjqdNLhHjPwQFM5WAgJFu)
              padding: EdgeInsets.fromLTRB(18*fem, 18*fem, 21*fem, 226*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupeulwZLR (RTjnhctCxXaiCrsA5GEuLw)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 16*fem),
                    width: double.infinity,
                    height: 135*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame33dbB (269:2785)
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
                                // frame42eFP (269:2786)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-42-Zdo.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41KsK (269:3121)
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
                          // frame43B8q (269:3123)
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
                                // frame391df (269:3124)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-39-tQm.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame40Voj (269:3308)
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
                    // autogrouppwdzmFT (RTjofFxAX4YiYeK6kjPWdZ)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 1*fem, 19*fem),
                    width: double.infinity,
                    height: 135*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame44Tty (269:3310)
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
                                // frame43rw7 (269:3311)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-ZuF.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41AB7 (269:3556)
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
                          // frame451xR (269:3558)
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
                                // frame44Frm (269:3559)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-44-kAZ.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame45kYd (269:3690)
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
                  Container(
                    // autogroupc9ymQt5 (RTjpZZnLjEuR9uwzWSC9yM)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame468JH (269:3880)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 21*fem, 2*fem),
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
                                // frame43x2R (269:3881)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 7*fem),
                                width: 94*fem,
                                height: 78*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-aXX.png',
                                  width: 94*fem,
                                  height: 78*fem,
                                ),
                              ),
                              Container(
                                // frame41qc1 (269:4337)
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
                          // frame47urm (269:4339)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
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
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // frame44XNM (269:4798)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-44-WkV.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame45Qww (269:4983)
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