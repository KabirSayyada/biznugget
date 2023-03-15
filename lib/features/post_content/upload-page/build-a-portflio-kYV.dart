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
        // buildaportflios1o (266:191)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12XMF (266:192)
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
                // frame89ZYq (266:193)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupgzsdtb7 (RTjV2xesyMAq7z2VBaGzsD)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 50*fem, 5*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44PGy (266:194)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 62*fem, 0*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-ZnV.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // buildaportfoliofkH (266:196)
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
                      // frame279fT (266:197)
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
                          'Post',
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
              // autogroups7sjf1X (RTjSuSNN8poUDjB97es7Sj)
              padding: EdgeInsets.fromLTRB(17*fem, 16*fem, 12*fem, 44*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    // group3YLD (266:258)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 24*fem),
                    width: double.infinity,
                    height: 17*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group1dMf (266:259)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 5*fem, 5*fem),
                          width: 314*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            // rectangle3KEV (266:261)
                            child: SizedBox(
                              width: double.infinity,
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
                          // Dam (266:262)
                          '3/3',
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
                    // frame836XLZ (305:22)
                    margin: EdgeInsets.fromLTRB(279*fem, 0*fem, 5*fem, 9*fem),
                    padding: EdgeInsets.fromLTRB(5*fem, 5*fem, 5*fem, 5*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0xff01c3cc)),
                      borderRadius: BorderRadius.circular(5*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // vectorP7s (305:23)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                          width: 14*fem,
                          height: 14*fem,
                          child: Image.asset(
                            'assets/upload-page/images/vector-XPK.png',
                            width: 14*fem,
                            height: 14*fem,
                          ),
                        ),
                        Text(
                          // addUv1 (305:24)
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
                  Container(
                    // frame57QHs (266:199)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 113*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame8526gV (266:276)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 7*fem),
                          width: 343*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // projectnamecPw (266:277)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Text(
                                  'Project name',
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
                                // frame47JGm (266:278)
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
                                  'Ex:. Thrift mobile app',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame61fmX (266:280)
                          margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 24*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 22*fem, 12*fem),
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
                                // choosecategoryff3 (266:281)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 180*fem, 0*fem),
                                child: Text(
                                  'Choose category',
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
                                // vectorYTw (266:282)
                                width: 16*fem,
                                height: 8*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/vector-hCq.png',
                                  width: 16*fem,
                                  height: 8*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          // frame52G93 (266:266)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 21*fem),
                          width: 299*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame49B17 (266:267)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // addprojectphotovideo5sB (266:268)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 5*fem),
                                      child: Text(
                                        'Add  project photo & video',
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
                                      // weacceptjpegpngandgifpicturesm (266:269)
                                      constraints: BoxConstraints (
                                        maxWidth: 152*fem,
                                      ),
                                      child: RichText(
                                        text: TextSpan(
                                          style: SafeGoogleFont (
                                            'SF UI Text',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w400,
                                            height: 1.193359375*ffem/fem,
                                            letterSpacing: -0.03*fem,
                                            color: const Color(0xff1e1e1e),
                                          ),
                                          children: [
                                            TextSpan(
                                              text: 'We accept JPEG, PNG, and Gif. \n',
                                              style: SafeGoogleFont (
                                                'SF UI Text',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575*ffem/fem,
                                                letterSpacing: -0.03*fem,
                                                color: const Color(0xff1e1e1e),
                                              ),
                                            ),
                                            TextSpan(
                                              text: 'Pictures may not exceed 5MB',
                                              style: SafeGoogleFont (
                                                'SF UI Text',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.2575*ffem/fem,
                                                letterSpacing: -0.03*fem,
                                                color: const Color(0xb21e1e1e),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                // frame51SdB (266:270)
                                padding: EdgeInsets.fromLTRB(30.5*fem, 14*fem, 30.5*fem, 14*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0x33000000)),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame3i4u (266:271)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/frame-3-5TK.png',
                                        width: 50*fem,
                                        height: 50*fem,
                                      ),
                                    ),
                                    SizedBox(
                                      // frame50beV (266:273)
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Container(
                                            // uploadherewCZ (266:274)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                                            child: Text(
                                              'Upload here',
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
                                            // grabanddragphotostochangetheor (266:275)
                                            constraints: BoxConstraints (
                                              maxWidth: 238*fem,
                                            ),
                                            child: Text(
                                              'Grab and drag photos to change the order\n20max',
                                              textAlign: TextAlign.center,
                                              style: SafeGoogleFont (
                                                'SF UI Text',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.193359375*ffem/fem,
                                                letterSpacing: -0.03*fem,
                                                color: const Color(0x7f000000),
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
                        Container(
                          // frame854gJZ (266:289)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // projectdescriptionPim (266:283)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                child: Text(
                                  'Project Description',
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
                              Container(
                                // provideanoverviewoftheprojects (266:284)
                                constraints: BoxConstraints (
                                  maxWidth: 324*fem,
                                ),
                                child: Text(
                                  'Provide an overview of the project scope, technology and\nprocedure for the project.',
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
                            ],
                          ),
                        ),
                        Container(
                          // frame47Wgu (266:285)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
                          width: 343*fem,
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
                            'Tags (optional)',
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
                        Container(
                          // frame853TkZ (266:287)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
                          width: 343*fem,
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
                            'Source URL (optional)',
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
                        SizedBox(
                          // frame850ayb (266:236)
                          width: 343*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // frame47WsF (266:248)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
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
                                  'Tell us more about your project.',
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
                              Text(
                                // t77 (266:250)
                                '0/450',
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
                    // byclickingonpublishyouacceptth (266:251)
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