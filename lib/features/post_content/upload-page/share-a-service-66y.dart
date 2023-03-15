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
        // shareaservicevpd (143:2372)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12BkZ (143:2373)
              padding: EdgeInsets.fromLTRB(16*fem, 31*fem, 13*fem, 17*fem),
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
                // frame89Eyj (143:2374)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupb94oxPw (RTihQMX84LcqDgk2KMb94o)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 38*fem, 5*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44eXf (143:2375)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50*fem, 0*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-t4u.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // postjobopenings7w3 (143:2377)
                            'Post Job Openings',
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
                    Container(
                      // frame27oJ5 (143:2378)
                      width: 56*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
                        gradient: const LinearGradient (
                          begin: Alignment(0, -1),
                          end: Alignment(0.37, 1.529),
                          colors: <Color>[Color(0x3f01c3cc), Color(0x3f3f56f2)],
                          stops: <double>[0, 1],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0x1e000000),
                            offset: Offset(2*fem, 2*fem),
                            blurRadius: 1*fem,
                          ),
                          BoxShadow(
                            color: const Color(0x1e000000),
                            offset: Offset(-2*fem, -2*fem),
                            blurRadius: 1*fem,
                          ),
                        ],
                      ),
                      child: Center(
                        child: Text(
                          'Next',
                          style: SafeGoogleFont (
                            'SF UI Text',
                            fontSize: 12*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            letterSpacing: -0.03*fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // autogroupvxzfv1K (RTie7nKznQzwh5wY6RVxzf)
              padding: EdgeInsets.fromLTRB(13*fem, 12*fem, 14*fem, 64*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group3bt9 (191:84)
                    margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 17*fem),
                    width: double.infinity,
                    height: 17*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group1sqf (191:85)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 8*fem, 5*fem),
                          width: 314*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Align(
                            // rectangle3AJy (191:87)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 202*fem,
                              height: 6*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  color: const Color(0xff01c3cc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // ejw (191:88)
                          '2/3',
                          style: SafeGoogleFont (
                            'SF UI Text',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.193359375*ffem/fem,
                            letterSpacing: -0.035*fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame57MuF (143:2380)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 115*fem),
                    width: 346*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame829qZX (148:6)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 1*fem, 0*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // payrange9aD (143:2391)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Text(
                                  'Pay range',
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
                              Container(
                                // group9ELm (148:5)
                                width: double.infinity,
                                height: 93*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // autogroupppj78h3 (RTif1WLp1P3s9TxePKPpJ7)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 27*fem, 0*fem),
                                      width: 120*fem,
                                      height: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // frame419DyP (146:2457)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                            padding: EdgeInsets.fromLTRB(11.5*fem, 10*fem, 11.5*fem, 9*fem),
                                            width: 99*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: const Color(0x6b404040)),
                                              color: const Color(0x99ffffff),
                                              borderRadius: BorderRadius.circular(10*fem),
                                            ),
                                            child: Text(
                                              '0',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'SF UI Text',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2575*ffem/fem,
                                                letterSpacing: -0.035*fem,
                                                color: const Color(0xff424a52),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame7902A9 (146:2465)
                                            width: double.infinity,
                                            height: 39*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: const Color(0x33000000)),
                                              color: const Color(0xffffffff),
                                              borderRadius: BorderRadius.circular(10*fem),
                                            ),
                                            child: Center(
                                              child: Text(
                                                'Input currency',
                                                style: SafeGoogleFont (
                                                  'SF UI Text',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w500,
                                                  height: 1.2575*ffem/fem,
                                                  letterSpacing: -0.03*fem,
                                                  color: const Color(0xffa6a6a6),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      // toGqB (146:2461)
                                      margin: EdgeInsets.fromLTRB(0*fem, 10*fem, 59*fem, 0*fem),
                                      child: Text(
                                        'to',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w500,
                                          height: 1.193359375*ffem/fem,
                                          letterSpacing: -0.035*fem,
                                          color: const Color(0xb2404040),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // autogroup217hxT7 (RTifMabhPyKP8xmmsT217h)
                                      width: 122*fem,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.end,
                                        children: [
                                          Container(
                                            // frame440fMX (146:2459)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 18*fem),
                                            padding: EdgeInsets.fromLTRB(11.5*fem, 10*fem, 11.5*fem, 9*fem),
                                            width: 99*fem,
                                            decoration: BoxDecoration (
                                              border: Border.all(color: const Color(0x6b404040)),
                                              color: const Color(0x99ffffff),
                                              borderRadius: BorderRadius.circular(10*fem),
                                            ),
                                            child: Text(
                                              '0',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'SF UI Text',
                                                fontSize: 14*ffem,
                                                fontWeight: FontWeight.w500,
                                                height: 1.2575*ffem/fem,
                                                letterSpacing: -0.035*fem,
                                                color: const Color(0xff424a52),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            // frame614eZ (148:2)
                                            padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 21*fem, 10*fem),
                                            width: double.infinity,
                                            decoration: BoxDecoration (
                                              color: const Color(0xffffffff),
                                              borderRadius: BorderRadius.circular(10*fem),
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
                                                  // monthlysM7 (148:3)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 0*fem),
                                                  child: Text(
                                                    'Monthly',
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
                                                SizedBox(
                                                  // vectorwrm (148:4)
                                                  width: 16*fem,
                                                  height: 8*fem,
                                                  child: Image.asset(
                                                    'assets/upload-page/images/vector-92M.png',
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
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12*fem,
                        ),
                        Container(
                          // frame6227X (148:7)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                          width: 343*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // howmanyhiresneededforthisposit (148:8)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                child: Text(
                                  'How many hires needed for this position?',
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
                              Container(
                                // frame48Yzy (148:9)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 11*fem),
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
                                child: Text(
                                  'Input number',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xffa6a6a6),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12*fem,
                        ),
                        SizedBox(
                          // frame830uDF (148:11)
                          width: 343*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // resumeneeded2Ym (148:12)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Text(
                                  'Resume needed?',
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
                              Container(
                                // frame61heu (148:15)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 13*fem, 11*fem),
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
                                      // yesia1 (148:16)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 285*fem, 0*fem),
                                      child: Text(
                                        'Yes',
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
                                    Container(
                                      // vectorQhj (148:17)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      width: 16*fem,
                                      height: 8*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-PQq.png',
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
                        SizedBox(
                          height: 12*fem,
                        ),
                        Container(
                          // frame8315J5 (148:18)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                          width: 343*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // applicationdeadlinePJm (148:19)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Text(
                                  'Application deadline',
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
                              Container(
                                // frame61U5K (148:20)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 16*fem, 12*fem),
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
                                      // 557 (148:21)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 225*fem, 0*fem),
                                      child: Text(
                                        '2-02-2023',
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.193359375*ffem/fem,
                                          letterSpacing: -0.035*fem,
                                          color: const Color(0xffa6a6a6),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // vectorkh3 (148:25)
                                      width: 18*fem,
                                      height: 20*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-8Y5.png',
                                        width: 18*fem,
                                        height: 20*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12*fem,
                        ),
                        Container(
                          // frame61FNu (268:2683)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 17*fem, 11*fem),
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
                                // choosecategoryFXK (268:2684)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 203*fem, 0*fem),
                                child: Text(
                                  'Choose category',
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
                              Container(
                                // vectorLHs (268:2685)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                width: 16*fem,
                                height: 8*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/vector-7cR.png',
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
                          // frame832oBT (148:29)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 137*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 10*fem, 10*fem),
                          width: double.infinity,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xff01c3cc)),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vectorrvR (148:28)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 3*fem),
                                width: 14*fem,
                                height: 14*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/vector-iLu.png',
                                  width: 14*fem,
                                  height: 14*fem,
                                ),
                              ),
                              Text(
                                // addscreeningquestionkku (148:26)
                                'Add screening question',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // byclickingonpublishyouacceptth (143:2432)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 0*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 336*fem,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.03*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'By clicking on Publish, you accept the ',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff830d3f),
                            ),
                          ),
                          TextSpan(
                            text: ', follow\nsafety tips, and verify this post does not contain prohibited \nitems.',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
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