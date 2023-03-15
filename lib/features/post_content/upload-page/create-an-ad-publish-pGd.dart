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
        // createanadpublishbKT (112:32)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12U8M (112:33)
              padding: EdgeInsets.fromLTRB(16*fem, 33*fem, 16*fem, 23*fem),
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
                // frame799EV (112:34)
                width: 238*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame44TFB (112:35)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 2*fem),
                      width: 14*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-44-h6V.png',
                        width: 14*fem,
                        height: 16*fem,
                      ),
                    ),
                    Text(
                      // shareaserviceYGd (112:37)
                      'Share a Service',
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
            Container(
              // autogroupfdjr2Bo (RTiC5wsRpEwfVMqtiGfDjR)
              padding: EdgeInsets.fromLTRB(1*fem, 16*fem, 1*fem, 25*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame80HNd (112:45)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 10*fem),
                    padding: EdgeInsets.fromLTRB(15*fem, 0*fem, 14*fem, 24*fem),
                    width: 372*fem,
                    decoration: BoxDecoration (
                      color: const Color(0xffebebeb),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // rectangle1k1K (112:68)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          width: double.infinity,
                          height: 145*fem,
                          decoration: const BoxDecoration (
                            color: Color(0xffd9d9d9),
                            image: DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/upload-page/images/rectangle-1-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame811xq (112:49)
                          margin: EdgeInsets.fromLTRB(142*fem, 0*fem, 143*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse1Jh3 (112:50)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0xff830d3f),
                                ),
                              ),
                              SizedBox(
                                width: 6*fem,
                              ),
                              Container(
                                // ellipse2PyP (112:51)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0x7f455a64),
                                ),
                              ),
                              SizedBox(
                                width: 6*fem,
                              ),
                              Container(
                                // ellipse36N1 (112:52)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0x7f455a64),
                                ),
                              ),
                              SizedBox(
                                width: 6*fem,
                              ),
                              Container(
                                // ellipse4CR3 (112:53)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0x7f455a64),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame8237H7 (112:180)
                    margin: EdgeInsets.fromLTRB(16.5*fem, 0*fem, 16.5*fem, 17*fem),
                    width: double.infinity,
                    height: 30*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame821cjf (112:176)
                          margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 175*fem, 5*fem),
                          height: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // ellipse5Ke5 (112:175)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                                width: 20*fem,
                                height: 20*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  color: const Color(0xffd9d9d9),
                                  image: const DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/upload-page/images/ellipse-5-bg-1js.png',
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                // roselyninyangCC5 (112:174)
                                'Roselyn Inyang',
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
                        SizedBox(
                          // frame8226YM (112:179)
                          width: 30*fem,
                          height: 30*fem,
                          child: Image.asset(
                            'assets/upload-page/images/frame-822.png',
                            width: 30*fem,
                            height: 30*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame83D7B (112:41)
                    margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 15*fem, 12*fem),
                    padding: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0x66000000)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // icreateuniqueandsimpleuserinte (112:42)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 63*fem, 0*fem),
                          constraints: BoxConstraints (
                            maxWidth: 240*fem,
                          ),
                          child: Text(
                            'I create unique and simple user\ninterfaces',
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
                        SizedBox(
                          // frame90jDw (112:43)
                          width: 40*fem,
                          height: 33*fem,
                          child: Image.asset(
                            'assets/upload-page/images/frame-90-JM3.png',
                            width: 40*fem,
                            height: 33*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame8202yj (112:173)
                    margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 244*fem, 12*fem),
                    padding: EdgeInsets.fromLTRB(5*fem, 5*fem, 5*fem, 5*fem),
                    width: double.infinity,
                    decoration: const BoxDecoration (
                      color: Color(0xff01c3cc),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // userdatatm3 (112:171)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 29*fem, 0*fem),
                          child: Text(
                            'User Data',
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
                        Container(
                          // vectorynV (112:172)
                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                          width: 8*fem,
                          height: 16*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-niR.png',
                            width: 8*fem,
                            height: 16*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame845Kj (112:57)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 20*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // autogroupp14wC9T (RTiDQufC2FQRiqHMj2p14w)
                          margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 21*fem, 3*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // descriptionHRo (112:58)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 254*fem, 0*fem),
                                child: Text(
                                  'Description',
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
                                // frame815MgZ (112:92)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                width: 16*fem,
                                height: 8*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/frame-815.png',
                                  width: 16*fem,
                                  height: 8*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame82qrd (112:59)
                          padding: EdgeInsets.fromLTRB(16*fem, 5*fem, 11*fem, 5*fem),
                          width: double.infinity,
                          height: 86*fem,
                          decoration: const BoxDecoration (
                            color: Color(0xfff5f5f5),
                          ),
                          child: Center(
                            // woremipsumdolorsitametconsecte (112:90)
                            child: SizedBox(
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 346*fem,
                                ),
                                child: Text(
                                  'Worem ipsum dolor sit amet, consectetur adipiscing elit. \nNunc vulputate libero et velit interdum, ac aliquetodio mattis. \nClass aptent taciti sociosqu ad litora torquent per conubia \nnostra, per inceptos himenaeos Curabitur tempus urna at \nturpis condimentum lobortis.',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.03*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame85h1f (112:93)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // specialtyDEu (112:94)
                          margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 4*fem),
                          child: Text(
                            'Specialty',
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
                          // frame82HVf (112:95)
                          padding: EdgeInsets.fromLTRB(25*fem, 15.5*fem, 25*fem, 17.5*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xfff5f5f5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame791Zxy (112:101)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 86*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // star15gR (112:106)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                      width: 20*fem,
                                      height: 20*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/star-1-EEh.png',
                                        width: 20*fem,
                                        height: 20*fem,
                                      ),
                                    ),
                                    Text(
                                      // dmodelsandproductdesignxVK (112:105)
                                      '3d models and product design',
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
                              SizedBox(
                                height: 19*fem,
                              ),
                              Container(
                                // frame805cpm (112:107)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 134*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // star1jPb (112:118)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                      width: 20*fem,
                                      height: 20*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/star-1.png',
                                        width: 20*fem,
                                        height: 20*fem,
                                      ),
                                    ),
                                    Text(
                                      // webandmobiledesignSJ1 (112:108)
                                      'Web and mobile design',
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
                              SizedBox(
                                height: 19*fem,
                              ),
                              Container(
                                // frame794Ksb (112:112)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 221*fem, 0*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // star1dtH (112:119)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                      width: 20*fem,
                                      height: 20*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/star-1-mem.png',
                                        width: 20*fem,
                                        height: 20*fem,
                                      ),
                                    ),
                                    Text(
                                      // uxdesignjgR (112:116)
                                      'UX design',
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame86owB (112:120)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // skillsvW1 (112:121)
                          margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 4*fem),
                          child: Text(
                            'Skills',
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
                          // frame82DED (112:122)
                          padding: EdgeInsets.fromLTRB(25*fem, 17*fem, 46.5*fem, 8*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xfff5f5f5),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame791fru (112:123)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 23*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // uidesignPY1 (112:125)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 220*fem, 0*fem),
                                      child: Text(
                                        'Ui design',
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
                                    Container(
                                      // vectorsxy (112:132)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                      width: 17.5*fem,
                                      height: 13.41*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-N5B.png',
                                        width: 17.5*fem,
                                        height: 13.41*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame792acV (112:133)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // uianimationHmo (112:134)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 200*fem, 0*fem),
                                      child: Text(
                                        'Ui animation',
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
                                    Container(
                                      // vectormS5 (112:135)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                      width: 17.5*fem,
                                      height: 13.41*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-TaV.png',
                                        width: 17.5*fem,
                                        height: 13.41*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame7933eV (112:136)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // userexperiencedesignjGR (112:137)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 150*fem, 0*fem),
                                      child: Text(
                                        'User experience design',
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
                                    Container(
                                      // vector1Uq (112:138)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      width: 17.5*fem,
                                      height: 13.41*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-CpD.png',
                                        width: 17.5*fem,
                                        height: 13.41*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame794WRb (112:139)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 17*fem),
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // research293 (112:140)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 230*fem, 0*fem),
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
                                    Container(
                                      // vector7RP (112:141)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      width: 17.5*fem,
                                      height: 13.41*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-8xd.png',
                                        width: 17.5*fem,
                                        height: 13.41*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // frame795Ns7 (112:142)
                                width: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // prototypingv7w (112:143)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 205*fem, 0*fem),
                                      child: Text(
                                        'Prototyping',
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
                                    Container(
                                      // vectorQJ1 (112:144)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                                      width: 17.5*fem,
                                      height: 13.41*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-XJ5.png',
                                        width: 17.5*fem,
                                        height: 13.41*fem,
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
                    // frame824JeH (112:181)
                    margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 15*fem, 42*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame818RD7 (112:165)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 14*fem),
                          width: double.infinity,
                          height: 30*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // expecteddeliveryin6daysL5B (112:157)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99*fem, 0*fem),
                                child: Text(
                                  'Expected delivery in 6 days',
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
                              SizedBox(
                                // frame817xsF (112:161)
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // hK3 (112:158)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                      child: Text(
                                        '50,000',
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.193359375*ffem/fem,
                                          letterSpacing: -0.035*fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // frame60mph (112:159)
                                      width: 32*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/frame-60-WRT.png',
                                        width: 32*fem,
                                        height: 30*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          // frame81966H (112:170)
                          width: double.infinity,
                          height: 30*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame62cKX (112:162)
                                margin: EdgeInsets.fromLTRB(0*fem, 7.5*fem, 122*fem, 7.5*fem),
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rectangle6KUq (112:163)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                      width: 15*fem,
                                      height: 15*fem,
                                      decoration: BoxDecoration (
                                        border: Border.all(color: const Color(0xff830d3f)),
                                        color: const Color(0xffebebeb),
                                      ),
                                    ),
                                    Text(
                                      // expressdeliveryin2daysouo (112:164)
                                      'Express delivery in 2 days',
                                      style: SafeGoogleFont (
                                        'SF UI Text',
                                        fontSize: 12*ffem,
                                        fontWeight: FontWeight.w400,
                                        height: 1.193359375*ffem/fem,
                                        letterSpacing: -0.03*fem,
                                        color: const Color(0xff830d3f),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                // frame817iWy (112:166)
                                height: double.infinity,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // rNH (112:167)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                                      child: Text(
                                        '0',
                                        style: SafeGoogleFont (
                                          'SF UI Text',
                                          fontSize: 14*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.193359375*ffem/fem,
                                          letterSpacing: -0.035*fem,
                                          color: const Color(0xff000000),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      // frame609MP (112:168)
                                      width: 32*fem,
                                      height: 30*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/frame-60-GBw.png',
                                        width: 32*fem,
                                        height: 30*fem,
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
                    // frame27f4q (112:39)
                    margin: EdgeInsets.fromLTRB(68*fem, 0*fem, 67*fem, 57*fem),
                    width: double.infinity,
                    height: 41*fem,
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
                        'Publish',
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
                  Container(
                    // byclickingonpublishyouacceptth (112:38)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
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