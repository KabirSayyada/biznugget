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
        // buildaportflioAn1 (263:46)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12mWu (263:47)
              padding: EdgeInsets.fromLTRB(16*fem, 31*fem, 17*fem, 17*fem),
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
                // frame898Vs (263:48)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouppuypqQH (RTjP2DWJp1FbsP8vrNPuYP)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 50*fem, 5*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44jkZ (263:49)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 62*fem, 0*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-MNu.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // buildaportfolio2Ds (263:51)
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
                    Container(
                      // frame27W93 (263:52)
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
                            height: 1.193359375*ffem/fem,
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
              // autogroupxbuxRvD (RTjKJzMbYFXeiaXsNNxbUX)
              padding: EdgeInsets.fromLTRB(16*fem, 16*fem, 13*fem, 44*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group4KVo (267:302)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 3*fem, 20*fem),
                    width: double.infinity,
                    height: 17*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group1cE1 (267:303)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 5*fem, 5*fem),
                          width: 314*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Align(
                            // rectangle3J6q (267:305)
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
                          // zkM (267:306)
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
                    // autogroupdspbVx1 (RTjJabQa6gPBiSPJURdSpb)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 20*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // frame849PGh (263:138)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 107*fem, 5*fem),
                          width: 173*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // addworkexperienceh2V (263:93)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                                child: Text(
                                  'Add Work Experience',
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
                              SizedBox(
                                // frame63ARs (263:115)
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rectangle76aR (263:116)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                      width: 15*fem,
                                      height: 15*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: const Color(0xff1e1e1e)),
                                        color: const Color(0xffebebeb),
                                      ),
                                    ),
                                    Text(
                                      // ihavenoworkexperienceCNZ (263:117)
                                      'I have no work experience',
                                      style: SafeGoogleFont (
                                        'SF UI Text',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.193359375*ffem/fem,
                                        letterSpacing: -0.03*fem,
                                        color: const Color(0xff1e1e1e),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame836u25 (266:263)
                          margin: EdgeInsets.fromLTRB(0*fem, 22*fem, 0*fem, 0*fem),
                          padding: EdgeInsets.fromLTRB(5*fem, 5*fem, 5*fem, 5*fem),
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xff01c3cc)),
                            borderRadius: BorderRadius.circular(5*fem),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // vectorNgM (266:264)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                width: 14*fem,
                                height: 14*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/vector-fSD.png',
                                  width: 14*fem,
                                  height: 14*fem,
                                ),
                              ),
                              Text(
                                // adds7K (266:265)
                                'Add',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
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
                    // frame57BNu (263:54)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 85*fem),
                    width: 343*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame814g4m (263:94)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0x33c7c7c7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame63ypZ (263:98)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // industryVnu (263:99)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                      child: Text(
                                        'Industry*',
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
                                      // frame47Bfj (263:100)
                                      padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
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
                                        'Ex:. Audit',
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.193359375*ffem/fem,
                                          letterSpacing: -0.035*fem,
                                          color: const Color(0xff1e1e1e),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // frame558zH (263:102)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // positionGKo (263:103)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      child: Text(
                                        'Position*',
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
                                      // frame47xTX (263:104)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
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
                                        'Ex: sales manager',
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.2575*ffem/fem,
                                          letterSpacing: -0.0325*fem,
                                          color: const Color(0xff1e1e1e),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // frame830XQ9 (263:118)
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // employmenttype4Q5 (263:119)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                            child: Text(
                                              'Employment type',
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
                                            // frame61kGu (263:120)
                                            padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 17*fem, 12*fem),
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
                                                  // pleaseselectyQZ (263:121)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                                                  child: Text(
                                                    'Please select',
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
                                                  // vectorG8m (263:122)
                                                  width: 16*fem,
                                                  height: 8*fem,
                                                  child: Image.asset(
                                                    'assets/upload-page/images/vector-jDP.png',
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
                        Container(
                          // frame814NSh (263:124)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0x33c7c7c7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame6356D (263:125)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // companynameB9F (263:126)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                      child: Text(
                                        'Company name*',
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
                                      // frame47Fuo (263:127)
                                      padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
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
                                        'Ex:. Accounting',
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.193359375*ffem/fem,
                                          letterSpacing: -0.035*fem,
                                          color: const Color(0xff1e1e1e),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // frame55reh (263:129)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      // locationzW1 (263:130)
                                      'Location',
                                      style: SafeGoogleFont (
                                        'SF UI Text',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.193359375*ffem/fem,
                                        letterSpacing: -0.035*fem,
                                        color: const Color(0xff1e1e1e),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8*fem,
                                    ),
                                    Container(
                                      // frame47HED (263:131)
                                      padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
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
                                        'Ex: Lagos, Nigeria',
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 13*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.193359375*ffem/fem,
                                          letterSpacing: -0.0325*fem,
                                          color: const Color(0xff1e1e1e),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 8*fem,
                                    ),
                                    SizedBox(
                                      // frame830G69 (263:133)
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // workplaceCVb (263:134)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                            child: Text(
                                              'Work place',
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
                                            // frame61sbj (263:135)
                                            padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 17*fem, 12*fem),
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
                                                  // pleaseselectHvM (263:136)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 210*fem, 0*fem),
                                                  child: Text(
                                                    'Please select',
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
                                                  // vectoraeZ (263:137)
                                                  width: 16*fem,
                                                  height: 8*fem,
                                                  child: Image.asset(
                                                    'assets/upload-page/images/vector-wiM.png',
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
                        Container(
                          // frame814W2R (263:159)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                          width: double.infinity,
                          height: 69*fem,
                          decoration: const BoxDecoration (
                            color: Color(0x33c7c7c7),
                          ),
                          child: SizedBox(
                            // frame63pYu (263:160)
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // startdateMHw (263:161)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                  child: Text(
                                    'Start date*',
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
                                  // frame473Rf (263:162)
                                  width: 343*fem,
                                  height: 44*fem,
                                  child: Image.asset(
                                    'assets/upload-page/images/frame-47.png',
                                    width: 343*fem,
                                    height: 44*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // frame814xHj (263:177)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          width: double.infinity,
                          height: 69*fem,
                          decoration: const BoxDecoration (
                            color: Color(0x33c7c7c7),
                          ),
                          child: SizedBox(
                            // frame63sQh (263:178)
                            width: double.infinity,
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // enddateNcM (263:179)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                  child: Text(
                                    'End date*',
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
                                  // frame47Tdo (263:180)
                                  width: 343*fem,
                                  height: 44*fem,
                                  child: Image.asset(
                                    'assets/upload-page/images/frame-47-CCV.png',
                                    width: 343*fem,
                                    height: 44*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // frame63AHK (264:182)
                          margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 209*fem, 25.5*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // rectangle7sBj (264:183)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                width: 15*fem,
                                height: 15*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0xff1e1e1e)),
                                  color: const Color(0xffebebeb),
                                ),
                              ),
                              Container(
                                // icurrentlyworkherem2D (264:184)
                                margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                                child: Text(
                                  'I currently work here.',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.03*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // frame851dq7 (266:190)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // frame55Mm7 (266:185)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // descriptionsDf (266:186)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                      child: Text(
                                        'Description',
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
                                      // frame47xW1 (266:187)
                                      padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
                                      width: double.infinity,
                                      height: 162*fem,
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
                                        'Describe your job responsibilities.',
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
                                  ],
                                ),
                              ),
                              Container(
                                // wMw (266:189)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                child: Text(
                                  '0/450',
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // byclickingonpublishyouacceptth (263:89)
                    margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
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