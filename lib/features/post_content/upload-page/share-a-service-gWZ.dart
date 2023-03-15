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
        // shareaserviceDUH (106:337)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12gcm (106:338)
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
                // frame89Y9B (106:339)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupr26oU2q (RThxU1ELWCDUPtodKtr26o)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 75*fem, 3*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44m1w (106:340)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 65*fem, 2*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-wVf.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // shareaserviceeLd (106:342)
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
                    Container(
                      // frame27KxZ (106:343)
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
              // autogroupcybdSfo (RThvKKK6hFEZBriiLMcYbd)
              padding: EdgeInsets.fromLTRB(15*fem, 12*fem, 16*fem, 40*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group3KUh (108:455)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 17*fem),
                    width: double.infinity,
                    height: 17*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group1bx1 (108:456)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 6*fem, 5*fem),
                          width: 314*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Align(
                            // rectangle3tgD (108:458)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              width: 159*fem,
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
                          // NrH (108:459)
                          '2/4',
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
                    // frame57gc5 (106:346)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 12*fem),
                    width: 343*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // languageybB (106:347)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            'Language',
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
                          // frame47fU1 (106:348)
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
                            'Input language',
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
                  Container(
                    // frame812EvR (107:449)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 11*fem),
                    width: 343*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // educationwK3 (106:352)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            'Education',
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
                          // frame814DGZ (112:2)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Opacity(
                                // frame47jVo (106:353)
                                opacity: 0.8,
                                child: Container(
                                  padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 22*fem, 11*fem),
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
                                        // selecthighestlevelofeducationX (106:354)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                                        child: Text(
                                          'Select highest level of education',
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
                                        // vectorQEZ (106:355)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2*fem),
                                        width: 8*fem,
                                        height: 16*fem,
                                        child: Image.asset(
                                          'assets/upload-page/images/vector-CAh.png',
                                          width: 8*fem,
                                          height: 16*fem,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 8*fem,
                              ),
                              SizedBox(
                                // frame63fgH (106:356)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // schoolCAR (106:357)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      child: Text(
                                        'School',
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
                                      // frame47HBs (106:358)
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
                                        'Input School',
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
                              SizedBox(
                                height: 8*fem,
                              ),
                              SizedBox(
                                // frame55qsb (106:420)
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // majorNcd (106:421)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                      child: Text(
                                        'Major',
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
                                      // frame47rXo (106:422)
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
                                        'Input field of study',
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
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame811RzD (107:448)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 11*fem),
                    width: 343*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // certification9QR (107:434)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            'Certification',
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
                        Container(
                          // frame8102j7 (107:447)
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0x33c7c7c7),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // frame47kQD (107:435)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
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
                                  'Input Certification or award',
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
                                // frame61WXo (107:444)
                                padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 24*fem, 11*fem),
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
                                      // yearacquiredj9f (107:445)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 214*fem, 0*fem),
                                      child: Text(
                                        'Year acquired',
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
                                      // vectorQmb (107:446)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                      width: 16*fem,
                                      height: 8*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/vector-6hK.png',
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
                  Container(
                    // frame813Vo3 (107:450)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 101*fem),
                    width: 343*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // personalwebsite1Fb (107:451)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          child: Text(
                            'Personal website',
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
                          // frame47Uey (107:452)
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
                            'Link to your personal site',
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
                  Container(
                    // byclickingonpublishyouacceptth (106:432)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
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