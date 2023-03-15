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
        // shareaserviceFjT (190:10)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12v4u (190:11)
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
                // frame89NSh (190:12)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup4jiwV1X (RTineTHR7inASzxhpv4Jiw)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 64*fem, 3*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44Bf3 (190:13)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 50*fem, 2*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-CZT.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // postjobopenings5Ed (190:15)
                            'Post Job Openings',
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
                      // frame27krZ (190:16)
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
              // autogroupmeybsph (RTikUGQgCWixZXrvDameYb)
              padding: EdgeInsets.fromLTRB(16*fem, 12*fem, 10*fem, 53*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // group2kNh (190:49)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 16*fem),
                    width: double.infinity,
                    height: 17*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // group1qQ9 (190:50)
                          margin: EdgeInsets.fromLTRB(0*fem, 6*fem, 7*fem, 5*fem),
                          width: 314*fem,
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xffd9d9d9),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            // rectangle3iyj (190:52)
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
                          // QLm (190:53)
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
                    // frame8387ky (190:59)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 6*fem, 28*fem),
                    width: double.infinity,
                    height: 33*fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // activateemployerhelpQEH (190:55)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117*fem, 0*fem),
                          child: Text(
                            'Activate Employer Help',
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
                          // frame8375LR (190:58)
                          padding: EdgeInsets.fromLTRB(8*fem, 8*fem, 8*fem, 8*fem),
                          height: double.infinity,
                          decoration: BoxDecoration (
                            color: const Color(0xff830d3f),
                            borderRadius: BorderRadius.circular(5*fem),
                            boxShadow: [
                              BoxShadow(
                                color: const Color(0x33000000),
                                offset: Offset(2*fem, 2*fem),
                                blurRadius: 1*fem,
                              ),
                            ],
                          ),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // yesLGM (190:56)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                child: Text(
                                  'Yes',
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
                              SizedBox(
                                // vectorRHo (190:57)
                                width: 16*fem,
                                height: 8*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/vector-BtZ.png',
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
                    // biznuggetwillhelpyourejectcand (190:60)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 23*fem, 21*fem),
                    constraints: BoxConstraints (
                      maxWidth: 318*fem,
                    ),
                    child: Text(
                      'Biznugget will help you reject candidate you don’t want\nin no time.',
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
                  Container(
                    // frame8429ND (191:80)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 34*fem),
                    width: 348*fem,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // ifimnotinteresteddeclineeachca (191:79)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 37*fem),
                          child: Text(
                            'If i’m not interested, decline each candidate after.',
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
                        SizedBox(
                          // frame841ho3 (191:78)
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // autogrouplznocv1 (RTimXV9fmnuheyeDkWLzno)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                                width: double.infinity,
                                height: 34*fem,
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      // frame839765 (191:74)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 207*fem, 0*fem),
                                      width: 71*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: const Color(0xff01c3cc),
                                        borderRadius: BorderRadius.circular(10*fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '5 days',
                                          style: SafeGoogleFont (
                                            'SF UI Text',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.193359375*ffem/fem,
                                            letterSpacing: -0.03*fem,
                                            color: const Color(0xffffffff),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      // frame840X9o (191:75)
                                      width: 64*fem,
                                      height: double.infinity,
                                      decoration: BoxDecoration (
                                        color: const Color(0xff01c3cc),
                                        borderRadius: BorderRadius.circular(10*fem),
                                      ),
                                      child: Center(
                                        child: Text(
                                          '21 days',
                                          style: SafeGoogleFont (
                                            'SF UI Text',
                                            fontSize: 12*ffem,
                                            fontWeight: FontWeight.w500,
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
                              SizedBox(
                                // autogroupjb1uyXb (RTimsE5n2YiVGpg3YTjb1u)
                                width: 348*fem,
                                height: 41*fem,
                                child: Image.asset(
                                  'assets/upload-page/images/auto-group-jb1u.png',
                                  width: 348*fem,
                                  height: 41*fem,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame843UUM (191:83)
                    margin: EdgeInsets.fromLTRB(2*fem, 0*fem, 14*fem, 260*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // rectangle7N3w (191:82)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                          width: 15*fem,
                          height: 15*fem,
                          decoration: BoxDecoration (
                            border: Border.all(color: const Color(0xff830d3f)),
                            color: const Color(0xffebebeb),
                          ),
                        ),
                        Container(
                          // tickthisboxtoenablebiznuggetto (191:81)
                          constraints: BoxConstraints (
                            maxWidth: 307*fem,
                          ),
                          child: Text(
                            'Tick this box to enable Biznugget to inform candidates\nof your decision if you don’t contact them within the \nspecified time.',
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
                    // byclickingonpublishyouacceptth (190:54)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
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