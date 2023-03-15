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
        // selectcategoryFRX (103:213)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 28.41*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame13WMT (103:214)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 18*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 30*fem, 18*fem, 18*fem),
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
                // frame89MN5 (103:279)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouppv3ysrD (RTfDn9UcDA1gPbNtdmPV3y)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 102*fem, 5*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44yuF (103:280)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 114*fem, 0*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-QyK.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // skillsTJd (103:282)
                            'Skills',
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
                      // frame27Z6m (103:283)
                      width: 56*fem,
                      height: double.infinity,
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(5*fem),
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
                          'Save',
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
              // selectthetop5skillsthatdefiney (103:219)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 0*fem, 19*fem),
              child: Text(
                'Select the top 5 skills that define you.',
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
              // skillsLfF (103:220)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
              width: double.infinity,
              decoration: const BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame338deM (103:221)
                    padding: EdgeInsets.fromLTRB(10*fem, 11*fem, 26*fem, 11*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0x33404040)),
                      color: const Color(0xffffffff),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pickyourskills8LD (103:222)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 197*fem, 0*fem),
                          child: Text(
                            'Pick your skills',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0xff404040),
                            ),
                          ),
                        ),
                        SizedBox(
                          // vectorox9 (103:223)
                          width: 10*fem,
                          height: 5*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-qGq.png',
                            width: 10*fem,
                            height: 5*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13*fem,
                  ),
                  Container(
                    // frame63J8D (104:11)
                    padding: EdgeInsets.fromLTRB(12*fem, 12*fem, 259.42*fem, 12*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0x7fffffff),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorBSu (104:12)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                          width: 17.58*fem,
                          height: 17.59*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-QpV.png',
                            width: 17.58*fem,
                            height: 17.59*fem,
                          ),
                        ),
                        Container(
                          // searchg8m (104:13)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                          child: Text(
                            'Search',
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
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 13*fem,
                  ),
                  Container(
                    // frame8079Y9 (103:224)
                    width: double.infinity,
                    decoration: const BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame787SGM (103:225)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 247*fem, 9.5*fem),
                          width: double.infinity,
                          height: 39*fem,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group67NV (104:38)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(5*fem, 4.91*fem, 5*fem, 5.09*fem),
                                width: 20*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(67*fem),
                                ),
                                child: Center(
                                  // rectangle32BNM (104:40)
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
                              Container(
                                // uidesignrzH (103:227)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'UI design',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame790joB (103:228)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 216*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle3221b (103:229)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Text(
                                // uianimationWBf (103:230)
                                'UI animation',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame791oAm (103:231)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 78*fem, 9.5*fem),
                          width: double.infinity,
                          height: 39*fem,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group658H (104:47)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(5*fem, 4.91*fem, 5*fem, 5.09*fem),
                                width: 20*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(67*fem),
                                ),
                                child: Center(
                                  // rectangle32wwB (104:49)
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
                              Text(
                                // userinterfaceexperiencedesignS (103:233)
                                'User interface experience design',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame792wJu (103:234)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 248*fem, 9.5*fem),
                          width: double.infinity,
                          height: 39*fem,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group61Zf (104:44)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(5*fem, 4.91*fem, 5*fem, 5.09*fem),
                                width: 20*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(67*fem),
                                ),
                                child: Center(
                                  // rectangle32b25 (104:46)
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
                              Container(
                                // researchtWy (103:236)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Research',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame793Nh3 (103:237)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 201*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32euT (103:238)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Text(
                                // communicaionMos (103:239)
                                'Communicaion',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame794s1X (103:240)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 245*fem, 9.5*fem),
                          width: double.infinity,
                          height: 39*fem,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group6k5K (104:41)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(5*fem, 4.91*fem, 5*fem, 5.09*fem),
                                width: 20*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(67*fem),
                                ),
                                child: Center(
                                  // rectangle321mw (104:43)
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
                              Container(
                                // creativityKXj (103:242)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Creativity',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame795pDb (103:243)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 167*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32tjF (103:244)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // brandingtypographyQBo (103:245)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Branding &Typography',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame796gf7 (103:246)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 206*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32mRf (103:247)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // problemsolvingFrd (103:248)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Problem solving',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame797vxm (103:249)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 172*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32Qd3 (103:250)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // visualcommunicationVuP (103:251)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Visual communication',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame798n7o (103:252)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 221*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle3245K (103:253)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // collaboration9Mf (103:254)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Collaboration',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame799RKB (103:255)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 172*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle326gD (103:256)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // motiongraphicdesignaLV (103:257)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Motion graphic design',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame8003E5 (103:258)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 176*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle327Dw (103:259)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Text(
                                // timemanagementcRb (103:260)
                                'Time management',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame801893 (103:261)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 238*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32Cub (103:262)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // innovationup1 (103:263)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Innovation',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame802C2R (103:264)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 226*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32UEq (103:265)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Text(
                                // htmlcssa2y (103:266)
                                'Html & Css',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame803HTB (103:267)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 233*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32mdF (103:268)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Container(
                                // storytellingH5o (103:269)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Storytelling',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame804MrM (103:270)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 218*fem, 9.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle32eaZ (103:271)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(67*fem),
                                  color: const Color(0xffd9d9d9),
                                ),
                              ),
                              Text(
                                // wireframingME5 (103:272)
                                'Wireframing',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame805TY1 (103:285)
                          padding: EdgeInsets.fromLTRB(10*fem, 9.5*fem, 240*fem, 9.5*fem),
                          width: double.infinity,
                          height: 39*fem,
                          decoration: const BoxDecoration (
                            color: Color(0xffffffff),
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // group6xUm (104:50)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(5*fem, 4.91*fem, 5*fem, 5.09*fem),
                                width: 20*fem,
                                height: double.infinity,
                                decoration: BoxDecoration (
                                  color: const Color(0xffd9d9d9),
                                  borderRadius: BorderRadius.circular(67*fem),
                                ),
                                child: Center(
                                  // rectangle322Dj (104:52)
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
                              Container(
                                // prototying8Xf (103:287)
                                margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                child: Text(
                                  'Prototying',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff404040),
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