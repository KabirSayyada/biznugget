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
        // postcontentmM7 (55:2)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame438jP (61:11154)
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
                // frame31wRw (61:11155)
                width: 243*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame32StV (61:11156)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 91*fem, 0*fem),
                      width: 24*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-32-rHb.png',
                        width: 24*fem,
                        height: 24*fem,
                      ),
                    ),
                    Text(
                      // postcontenty1F (61:11158)
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
              // whatdoyouwanttododLh (55:38)
              margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 0*fem),
              child: Text(
                'What do you want to do?',
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 16*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.04*fem,
                  color: const Color(0xff1e1e1e),
                ),
              ),
            ),
            Container(
              // autogroupcgfm5iV (RTeZXusQkBXWxaftevcGfm)
              padding: EdgeInsets.fromLTRB(19*fem, 18*fem, 20*fem, 229*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupn7khmbK (RTeXrDBCsusmzJrgmgN7Kh)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 16*fem),
                    width: double.infinity,
                    height: 135*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame33SSZ (56:2930)
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
                                // frame422Qm (61:5975)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-42-3U1.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41JNH (61:5637)
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
                                      color: const Color(0xff1e1e1e),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame34iB7 (57:2931)
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
                                blurRadius: 3*fem,
                              ),
                            ],
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame399XK (61:5635)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-39.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame402LD (61:5636)
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
                    // autogroupbkab4Gu (RTeYUmxcTMxTTYqR3YbKaB)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 15*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame39x7P (61:5638)
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
                                // frame43ZN5 (61:6220)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41e8d (61:5973)
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
                          // frame40tHs (61:6221)
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
                                // frame43sfb (61:6222)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-Hp1.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41Z2d (61:6467)
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
                    // autogroupfqk3ayK (RTeYz1cu4Ru4iTdS5XfQk3)
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame417TT (61:6599)
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
                                // frame43KJd (61:6600)
                                margin: EdgeInsets.fromLTRB(18*fem, 0*fem, 0*fem, 7*fem),
                                width: 94*fem,
                                height: 78*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-ne1.png',
                                  width: 94*fem,
                                  height: 78*fem,
                                ),
                              ),
                              Container(
                                // frame41D97 (61:6845)
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
                          // frame44sDf (270:7528)
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
                                // frame43GFo (270:7529)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 8*fem),
                                width: 94*fem,
                                height: 76*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-43-Ex5.png',
                                  width: 94*fem,
                                  height: 76*fem,
                                ),
                              ),
                              Container(
                                // frame41Yz1 (270:7714)
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