import 'package:biznugget/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';


class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // adpaymentS5j (281:30)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame126AH (281:31)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 33*fem, 16*fem, 23*fem),
              width: double.infinity,
              height: 82*fem,
              decoration: BoxDecoration (
                border: Border (
                ),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x56000000),
                    offset: Offset(0*fem, 2*fem),
                    blurRadius: 1*fem,
                  ),
                ],
              ),
              child: Container(
                // frame79jj3 (281:32)
                width: 211*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame44f6u (281:33)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 2*fem),
                      width: 14*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-44-8sF.png',
                        width: 14*fem,
                        height: 16*fem,
                      ),
                    ),
                    Text(
                      // createanad9Gy (281:35)
                      'create an ad',
                      style: SafeGoogleFont (
                        'SF UI Text',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2575*ffem/fem,
                        letterSpacing: -0.05*fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              // activatepromotionforadEJR (281:38)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 13*fem),
              child: Text(
                'Activate Promotion For Ad',
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w500,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.035*fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // getmorevisibilityupgradeapromo (281:39)
              margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
              child: Text(
                'Get more visibility, Upgrade a promotional package',
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.03*fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroup6q2owc9 (RTexgFJk3YNzz4ovXs6Q2o)
              padding: EdgeInsets.fromLTRB(16*fem, 47*fem, 16*fem, 2*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame884RXK (294:105)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                    padding: EdgeInsets.fromLTRB(8.5*fem, 12*fem, 8.5*fem, 12*fem),
                    width: double.infinity,
                    height: 70*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x4c000000)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle32UEh (294:106)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 26*fem),
                          width: 20*fem,
                          height: 20*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(67*fem),
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        SizedBox(
                          width: 58*fem,
                        ),
                        Container(
                          // frame862kCD (294:107)
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // silverGgM (294:108)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                child: Text(
                                  'Silver',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // uploads2dayspromotionMC1 (294:109)
                                '5 uploads & 2 days promotion',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.03*fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 58*fem,
                        ),
                        Container(
                          // frame861rRb (294:110)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // MNM (294:111)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                                child: Text(
                                  '\$',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: Color(0xff01c3cc),
                                  ),
                                ),
                              ),
                              Text(
                                // Rt1 (294:112)
                                '1',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.05*fem,
                                  color: Color(0xff01c3cc),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame885Lzy (294:113)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 28*fem),
                    padding: EdgeInsets.fromLTRB(7.5*fem, 12*fem, 9.5*fem, 10*fem),
                    width: double.infinity,
                    height: 70*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0xff01c3cc)),
                      borderRadius: BorderRadius.circular(10*fem),
                      gradient: LinearGradient (
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
                          // group6iEq (294:114)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 58*fem, 28*fem),
                          padding: EdgeInsets.fromLTRB(5*fem, 4.91*fem, 5*fem, 5.09*fem),
                          width: 20*fem,
                          decoration: BoxDecoration (
                            color: Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(67*fem),
                          ),
                          child: Center(
                            // rectangle32MYh (294:116)
                            child: SizedBox(
                              width: double.infinity,
                              height: 10*fem,
                              child: Container(
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: Color(0xff01c3cc),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame862T5w (294:117)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 78*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // gold9zM (294:118)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                child: Text(
                                  'Gold',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                // uploads7dayspromotionDzD (294:119)
                                '5 uploads & 7 days promotion',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  letterSpacing: -0.03*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame861KnM (294:120)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // 3CZ (294:121)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                child: Text(
                                  '\$',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                              Text(
                                // 8E1 (294:122)
                                '5',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  letterSpacing: -0.05*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame866dwT (294:123)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 45*fem),
                    padding: EdgeInsets.fromLTRB(9*fem, 12*fem, 9*fem, 10*fem),
                    width: double.infinity,
                    height: 70*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: Color(0x4c000000)),
                      color: Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle32GzR (294:124)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 48*fem, 28*fem),
                          width: 20*fem,
                          height: 20*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(67*fem),
                            color: Color(0xffd9d9d9),
                          ),
                        ),
                        Container(
                          // frame862A4D (294:125)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 69*fem, 0*fem),
                          height: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // platinum4vH (294:126)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 15*fem),
                                child: Text(
                                  'Platinum',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // uploads14dayspromotionYaZ (294:127)
                                '5 uploads & 14 days promotion',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.2575*ffem/fem,
                                  letterSpacing: -0.03*fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame861qpZ (294:128)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 24*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // MY1 (294:129)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                child: Text(
                                  '\$',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: Color(0xff01c3cc),
                                  ),
                                ),
                              ),
                              Text(
                                // 3Qq (294:130)
                                '12',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.05*fem,
                                  color: Color(0xff01c3cc),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupvvzoYsP (RTex8r3Q4YSeJRSRVjVvzo)
                    width: double.infinity,
                    height: 308*fem,
                    child: Stack(
                      children: [
                        Positioned(
                          // frame27TzM (281:36)
                          left: 61*fem,
                          top: 0*fem,
                          child: Container(
                            width: 238*fem,
                            height: 41*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                              gradient: LinearGradient (
                                begin: Alignment(0, -1),
                                end: Alignment(0.37, 1.529),
                                colors: <Color>[Color(0xff01c3cc), Color(0xff3f56f2)],
                                stops: <double>[0, 1],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x1e000000),
                                  offset: Offset(2*fem, 2*fem),
                                  blurRadius: 1*fem,
                                ),
                                BoxShadow(
                                  color: Color(0x1e000000),
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
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.045*fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          // frame883jqP (281:66)
                          left: 0*fem,
                          top: 22*fem,
                          child: Container(
                            padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 67*fem),
                            width: 343*fem,
                            height: 286*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x19000000)),
                              color: Color(0xffffffff),
                              borderRadius: BorderRadius.circular(15*fem),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupkzusab7 (RTexN1L8u3eW3enyMhkzUs)
                                  padding: EdgeInsets.fromLTRB(51*fem, 17*fem, 16.99*fem, 36*fem),
                                  width: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Container(
                                        // frame7735Xs (282:76)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 29.64*fem),
                                        width: 26.01*fem,
                                        height: 26.36*fem,
                                        child: Image.asset(
                                          'assets/upload-page/images/frame-773-FSM.png',
                                          width: 26.01*fem,
                                          height: 26.36*fem,
                                        ),
                                      ),
                                      Container(
                                        // chooseyourpaymentmethodZC9 (281:67)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34.01*fem, 0*fem),
                                        child: Text(
                                          'Choose your payment method',
                                          style: SafeGoogleFont (
                                            'SF UI Text',
                                            fontSize: 16*ffem,
                                            fontWeight: FontWeight.w700,
                                            height: 1.193359375*ffem/fem,
                                            letterSpacing: -0.04*fem,
                                            color: Color(0xff404040),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  // frame809asw (281:71)
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: Color(0xffffffff),
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame787ecu (281:72)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                        width: double.infinity,
                                        height: 39*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xff01c3cc),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Pay with cash',
                                            style: SafeGoogleFont (
                                              'SF UI Text',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: -0.035*fem,
                                              color: Color(0xff404040),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // frame788nsX (281:74)
                                        width: double.infinity,
                                        height: 39*fem,
                                        decoration: BoxDecoration (
                                          color: Color(0xffffffff),
                                        ),
                                        child: Center(
                                          child: Text(
                                            'Pay with card',
                                            style: SafeGoogleFont (
                                              'SF UI Text',
                                              fontSize: 14*ffem,
                                              fontWeight: FontWeight.w500,
                                              height: 1.2575*ffem/fem,
                                              letterSpacing: -0.035*fem,
                                              color: Color(0xff404040),
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