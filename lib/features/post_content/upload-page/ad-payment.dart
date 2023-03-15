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
        // adpaymentH41 (276:8)
        width: double.infinity,
        height: 812*fem,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Stack(
          children: [
            Positioned(
              // frame12ZGR (276:9)
              left: 0*fem,
              top: 2*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 33*fem, 16*fem, 23*fem),
                width: 375*fem,
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
                  // frame79Zvd (276:10)
                  width: 211*fem,
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame44gVT (276:11)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 2*fem),
                        width: 14*fem,
                        height: 16*fem,
                        child: Image.asset(
                          'assets/upload-page/images/frame-44-UL5.png',
                          width: 14*fem,
                          height: 16*fem,
                        ),
                      ),
                      Text(
                        // createanadxC5 (276:13)
                        'create an ad',
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
            ),
            Positioned(
              // autogroupgw3rdp1 (RTevWj5ZQ1FFquGkJtGw3R)
              left: 0*fem,
              top: 150*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(16*fem, 47*fem, 16*fem, 269*fem),
                width: 375*fem,
                height: 662*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame8635g1 (281:10)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                      padding: EdgeInsets.fromLTRB(8.5*fem, 12*fem, 8.5*fem, 10*fem),
                      width: double.infinity,
                      height: 70*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0x4c000000)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle32uQ9 (281:8)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 28*fem),
                            width: 20*fem,
                            height: 20*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(67*fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                          Container(
                            // frame862nTw (281:9)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79*fem, 0*fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // silverHvV (276:46)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                  child: Text(
                                    'Silver',
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
                                Text(
                                  // uploads2dayspromotionmam (276:47)
                                  '5 uploads & 2 days promotion',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.03*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // frame8614Zs (279:10)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // mDP (279:9)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                  child: Text(
                                    '\$',
                                    style: SafeGoogleFont (
                                      'SF UI Text',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375*ffem/fem,
                                      letterSpacing: -0.035*fem,
                                      color: const Color(0xff01c3cc),
                                    ),
                                  ),
                                ),
                                Text(
                                  // dWV (279:8)
                                  '1',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.05*fem,
                                    color: const Color(0xff01c3cc),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame885k5K (305:8)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                      padding: EdgeInsets.fromLTRB(7.5*fem, 12*fem, 9.5*fem, 12*fem),
                      width: double.infinity,
                      height: 70*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0xff01c3cc)),
                        borderRadius: BorderRadius.circular(10*fem),
                        gradient: const LinearGradient (
                          begin: Alignment(-0.239, -0.557),
                          end: Alignment(0.356, 1),
                          colors: <Color>[Color(0xff3f56f2), Color(0xff01c3cc)],
                          stops: <double>[0, 1],
                        ),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group6igM (305:9)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                            padding: EdgeInsets.fromLTRB(5*fem, 4.91*fem, 5*fem, 5.09*fem),
                            width: 20*fem,
                            decoration: BoxDecoration (
                              color: const Color(0xffd9d9d9),
                              borderRadius: BorderRadius.circular(67*fem),
                            ),
                            child: Center(
                              // rectangle32Nku (305:11)
                              child: SizedBox(
                                width: double.infinity,
                                height: 10*fem,
                                child: Container(
                                  decoration: BoxDecoration (
                                    borderRadius: BorderRadius.circular(67*fem),
                                    color: const Color(0xff01c3cc),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 58*fem,
                          ),
                          SizedBox(
                            // frame8623s3 (305:12)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // goldn3w (305:13)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                  child: Text(
                                    'Gold',
                                    style: SafeGoogleFont (
                                      'SF UI Text',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375*ffem/fem,
                                      letterSpacing: -0.035*fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Text(
                                  // uploads7dayspromotion3Em (305:14)
                                  '5 uploads & 7 days promotion',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.03*fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 58*fem,
                          ),
                          Container(
                            // frame861haD (305:15)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // ot9 (305:16)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                  child: Text(
                                    '\$',
                                    style: SafeGoogleFont (
                                      'SF UI Text',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2575*ffem/fem,
                                      letterSpacing: -0.035*fem,
                                      color: const Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Text(
                                  // ECm (305:17)
                                  '5',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.05*fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame866VeV (289:97)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
                      padding: EdgeInsets.fromLTRB(9*fem, 12*fem, 11*fem, 12*fem),
                      width: double.infinity,
                      height: 70*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: const Color(0x4c000000)),
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(10*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle323Jd (289:98)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                            width: 20*fem,
                            height: 20*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(67*fem),
                              color: const Color(0xffd9d9d9),
                            ),
                          ),
                          SizedBox(
                            width: 48*fem,
                          ),
                          SizedBox(
                            // frame8621uf (289:99)
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // platinumH6V (289:100)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                  child: Text(
                                    'Platinum',
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
                                Text(
                                  // uploads14dayspromotionXWd (289:101)
                                  '5 uploads & 14 days promotion',
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
                          SizedBox(
                            width: 48*fem,
                          ),
                          Container(
                            // frame861bWV (289:102)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // Jfo (289:103)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                  child: Text(
                                    '\$',
                                    style: SafeGoogleFont (
                                      'SF UI Text',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375*ffem/fem,
                                      letterSpacing: -0.035*fem,
                                      color: const Color(0xff01c3cc),
                                    ),
                                  ),
                                ),
                                Text(
                                  // nay (289:104)
                                  '12',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 20*ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.05*fem,
                                    color: const Color(0xff01c3cc),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // frame27W1B (276:15)
                      margin: EdgeInsets.fromLTRB(61*fem, 0*fem, 44*fem, 0*fem),
                      width: double.infinity,
                      height: 41*fem,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(10*fem),
                        gradient: const LinearGradient (
                          begin: Alignment(0, -1),
                          end: Alignment(0.37, 1.529),
                          colors: <Color>[Color(0xff01c3cc), Color(0xff3f56f2)],
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
                          'Make payment',
                          style: SafeGoogleFont (
                            'SF UI Text',
                            fontSize: 18*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2575*ffem/fem,
                            letterSpacing: -0.045*fem,
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // activatepromotionforadafF (276:44)
              left: 100*fem,
              top: 106*fem,
              child: Align(
                child: SizedBox(
                  width: 152*fem,
                  height: 18*fem,
                  child: Text(
                    'Activate Promotion For Ad',
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
            ),
            Positioned(
              // getmorevisibilityupgradeapromo (276:45)
              left: 44*fem,
              top: 136*fem,
              child: Align(
                child: SizedBox(
                  width: 288*fem,
                  height: 14*fem,
                  child: Text(
                    'Get more visibility, Upgrade a promotional package',
                    style: SafeGoogleFont (
                      'SF UI Text',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.193359375*ffem/fem,
                      letterSpacing: -0.03*fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}