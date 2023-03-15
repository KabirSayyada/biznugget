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
        // shareaserviceQU5 (106:152)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12etD (106:153)
              padding: EdgeInsets.fromLTRB(16*fem, 31*fem, 15*fem, 17*fem),
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
                // frame89W9j (106:154)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupzxfy2ds (RThrnaruBK2co5DmAvZXFy)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 53*fem, 5*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44X4q (106:155)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65*fem, 0*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-BRP.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // shareaservicezz1 (106:157)
                            'Share a Service',
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
                      // frame2761T (106:158)
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
              // autogroup3j1yb6d (RThjNdYeLZGp3wgbkD3J1y)
              padding: EdgeInsets.fromLTRB(16*fem, 12*fem, 16*fem, 40*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group3g85 (108:578)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                    width: double.infinity,
                    height: 17*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group1Zhf (108:579)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 8*fem, 5*fem),
                          width: 314*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Align(
                            // rectangle3ej7 (108:581)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 63*fem,
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
                          // iys (108:582)
                          '1/4',
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
                    // frame91dqw (106:160)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17.04*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          // frame57vKF (106:161)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // categoryeW9 (106:162)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                child: Text(
                                  'Category',
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
                                // frame478AR (106:163)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 19*fem, 11*fem),
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
                                      // designw7s (106:164)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 266*fem, 0*fem),
                                      child: Text(
                                        'Design',
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
                                    Container(
                                      // vectorR33 (106:165)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                      width: 8*fem,
                                      height: 16*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-hZf.png',
                                        width: 8*fem,
                                        height: 16*fem,
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
                        SizedBox(
                          // frame62UX7 (106:166)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // specialtycNR (106:167)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
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
                              Opacity(
                                // frame47taq (106:168)
                                opacity: 0.8,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 20*fem, 11*fem),
                                  width: double.infinity,
                                  decoration: BoxDecoration (
                                    color: const Color(0xccffffff),
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
                                        // dmodelsandproductdesignVad (106:169)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                                        child: Text(
                                          '3d models and product design....',
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
                                      Container(
                                        // vectorxj7 (106:170)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                        width: 8*fem,
                                        height: 16*fem,
                                        child: Image.asset(
                                          'assets/upload-page/images/vector-bY9.png',
                                          width: 8*fem,
                                          height: 16*fem,
                                        ),
                                      ),
                                    ],
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
                          // frame63dqF (106:171)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // skillsZyo (106:172)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
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
                                // frame47T3b (106:173)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 20*fem, 12*fem),
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
                                      // uidesignresearchuserexpeNy (106:174)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 99*fem, 0*fem),
                                      child: Text(
                                        'UI design, Research, User exp..',
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
                                      // vectorKV7 (106:175)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      width: 8*fem,
                                      height: 16*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-MEu.png',
                                        width: 8*fem,
                                        height: 16*fem,
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
                        SizedBox(
                          // frame52zr9 (106:176)
                          width: 299*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame49KNd (106:177)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // addfileEVb (106:178)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 6*fem),
                                      child: Text(
                                        'Add  file',
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
                                      // weacceptdocpdfjpegpngandgifpic (106:179)
                                      constraints: BoxConstraints (
                                        maxWidth: 239*fem,
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
                                              text: 'We accept',
                                              style: SafeGoogleFont (
                                                'SF UI Text',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.193359375*ffem/fem,
                                                letterSpacing: -0.03*fem,
                                                color: const Color(0xff1e1e1e),
                                              ),
                                            ),
                                            const TextSpan(
                                              text: ' DOC, PDF',
                                            ),
                                            TextSpan(
                                              text: ' JPEG, PNG, and Gif. \n',
                                              style: SafeGoogleFont (
                                                'SF UI Text',
                                                fontSize: 12*ffem,
                                                fontWeight: FontWeight.w400,
                                                height: 1.193359375*ffem/fem,
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
                                                height: 1.193359375*ffem/fem,
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
                                // frame48FX (106:180)
                                padding: EdgeInsets.fromLTRB(100*fem, 25.5*fem, 100*fem, 25.5*fem),
                                width: double.infinity,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0x33000000)),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame3PhF (106:181)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/frame-3-wx9.png',
                                        width: 50*fem,
                                        height: 50*fem,
                                      ),
                                    ),
                                    Text(
                                      // dropfileshere5a5 (106:183)
                                      'Drop files here',
                                      style: SafeGoogleFont (
                                        'SF UI Text',
                                        fontSize: 14*ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.193359375*ffem/fem,
                                        letterSpacing: -0.035*fem,
                                        color: const Color(0xff1e1e1e),
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
                        SizedBox(
                          // frame809kgD (106:285)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame225Tb (112:71)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                padding: EdgeInsets.fromLTRB(7*fem, 4*fem, 17*fem, 4*fem),
                                width: double.infinity,
                                height: 48*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0x4c000000)),
                                  color: const Color(0x33d9d9d9),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame16XaV (112:72)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 151*fem, 0*fem),
                                      height: double.infinity,
                                      child: Row(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // rectangle2Rvm (112:73)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                            width: 40*fem,
                                            height: 40*fem,
                                            decoration: const BoxDecoration (
                                              color: Color(0xffd9d9d9),
                                              image: DecorationImage (
                                                fit: BoxFit.cover,
                                                image: AssetImage (
                                                  'assets/upload-page/images/rectangle-2-bg-YVj.png',
                                                ),
                                              ),
                                            ),
                                          ),
                                          SizedBox(
                                            // autogroup2zvstZT (RThmCVfv1oDTAg8n6n2Zvs)
                                            width: 105*fem,
                                            height: 27*fem,
                                            child: Stack(
                                              children: [
                                                Positioned(
                                                  // pngimagedishQ21 (112:74)
                                                  left: 13*fem,
                                                  top: 13*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 92*fem,
                                                      height: 14*fem,
                                                      child: Text(
                                                        'PNG Image dish',
                                                        style: SafeGoogleFont (
                                                          'SF UI Text',
                                                          fontSize: 12*ffem,
                                                          fontWeight: FontWeight.w500,
                                                          height: 1.193359375*ffem/fem,
                                                          letterSpacing: -0.03*fem,
                                                          color: const Color(0xff1e1e1e),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  // maskgroupF2d (112:75)
                                                  left: 0*fem,
                                                  top: 0*fem,
                                                  child: Align(
                                                    child: SizedBox(
                                                      width: 16*fem,
                                                      height: 16*fem,
                                                      child: Image.asset(
                                                        'assets/upload-page/images/mask-group-xUd.png',
                                                        width: 16*fem,
                                                        height: 16*fem,
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
                                      // frame17KHP (112:81)
                                      width: 14*fem,
                                      height: 14*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/frame-17.png',
                                        width: 14*fem,
                                        height: 14*fem,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 2*fem,
                              ),
                              Container(
                                // frame19zPX (106:298)
                                width: double.infinity,
                                height: 48.48*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0x4c000000)),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Container(
                                  // frame17WMs (106:299)
                                  padding: EdgeInsets.fromLTRB(6*fem, 4*fem, 25*fem, 4*fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: const Color(0x33d9d9d9),
                                    borderRadius: BorderRadius.circular(10*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame16CVb (106:300)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 105*fem, 0*fem),
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              // frame207Mf (106:301)
                                              width: 40*fem,
                                              height: 40*fem,
                                              child: Image.asset(
                                                'assets/upload-page/images/frame-20.png',
                                                width: 40*fem,
                                                height: 40*fem,
                                              ),
                                            ),
                                            Container(
                                              // autogrouplbo1d57 (RThnSi6b3ecJach9VXLbo1)
                                              margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
                                              width: 153*fem,
                                              height: 25*fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // contractagreementpdf7W5 (106:312)
                                                    left: 13*fem,
                                                    top: 11*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 140*fem,
                                                        height: 14*fem,
                                                        child: Text(
                                                          'Contract agreement.Pdf',
                                                          style: SafeGoogleFont (
                                                            'SF UI Text',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.193359375*ffem/fem,
                                                            letterSpacing: -0.03*fem,
                                                            color: const Color(0xff1e1e1e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // maskgroup9xZ (106:315)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 16*fem,
                                                        height: 16*fem,
                                                        child: Image.asset(
                                                          'assets/upload-page/images/mask-group-ZaD.png',
                                                          width: 16*fem,
                                                          height: 16*fem,
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
                                        // frame172Ff (106:313)
                                        width: 14*fem,
                                        height: 14*fem,
                                        child: Image.asset(
                                          'assets/upload-page/images/frame-17-dvd.png',
                                          width: 14*fem,
                                          height: 14*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 2*fem,
                              ),
                              Container(
                                // frame21uqF (106:321)
                                width: double.infinity,
                                height: 48.48*fem,
                                decoration: BoxDecoration (
                                  border: Border.all(color: const Color(0x4c000000)),
                                  borderRadius: BorderRadius.circular(10*fem),
                                ),
                                child: Container(
                                  // frame1717b (106:322)
                                  padding: EdgeInsets.fromLTRB(6*fem, 3.52*fem, 25*fem, 4.48*fem),
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration (
                                    color: const Color(0x33d9d9d9),
                                    borderRadius: BorderRadius.circular(10*fem),
                                  ),
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // frame165dF (106:323)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 86*fem, 0*fem),
                                        height: double.infinity,
                                        child: Row(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                              // frame20nGm (106:324)
                                              width: 40*fem,
                                              height: 40*fem,
                                              child: Image.asset(
                                                'assets/upload-page/images/frame-20-CDB.png',
                                                width: 40*fem,
                                                height: 40*fem,
                                              ),
                                            ),
                                            SizedBox(
                                              // autogroupz3zmVS5 (RThqwSc7ka3rjVWGVtz3Zm)
                                              width: 172*fem,
                                              height: 27*fem,
                                              child: Stack(
                                                children: [
                                                  Positioned(
                                                    // spurvideoonworkshopvidC5b (106:327)
                                                    left: 13*fem,
                                                    top: 13*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 159*fem,
                                                        height: 14*fem,
                                                        child: Text(
                                                          'Spur video on workshop.vid',
                                                          style: SafeGoogleFont (
                                                            'SF UI Text',
                                                            fontSize: 12*ffem,
                                                            fontWeight: FontWeight.w500,
                                                            height: 1.193359375*ffem/fem,
                                                            letterSpacing: -0.03*fem,
                                                            color: const Color(0xff1e1e1e),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Positioned(
                                                    // maskgroup2qK (106:330)
                                                    left: 0*fem,
                                                    top: 0*fem,
                                                    child: Align(
                                                      child: SizedBox(
                                                        width: 16*fem,
                                                        height: 16*fem,
                                                        child: Image.asset(
                                                          'assets/upload-page/images/mask-group-mu7.png',
                                                          width: 16*fem,
                                                          height: 16*fem,
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
                                        // frame17hgZ (106:328)
                                        width: 14*fem,
                                        height: 14*fem,
                                        child: Image.asset(
                                          'assets/upload-page/images/frame-17-8tu.png',
                                          width: 14*fem,
                                          height: 14*fem,
                                        ),
                                      ),
                                    ],
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
                          // frame55nxu (106:221)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // descriptionXQh (106:222)
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
                                // frame4714y (106:223)
                                width: double.infinity,
                                height: 40*fem,
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
                                child: Center(
                                  child: Text(
                                    'Worem ipsum dolor sit amet, consectetur adipiscing ',
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
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 12*fem,
                        ),
                        Container(
                          // frame61wsj (106:225)
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
                                // yearsZ8R (106:226)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 246*fem, 0*fem),
                                child: Text(
                                  '3 Years',
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
                                // vectore9s (106:227)
                                width: 16*fem,
                                height: 8*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/vector-Jey.png',
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
                  Container(
                    // byclickingonpublishyouacceptth (106:233)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
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