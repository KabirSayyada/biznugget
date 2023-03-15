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
        // buildaportflioqYZ (269:6546)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // frame124gD (269:6547)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
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
                // frame896cu (269:6548)
                width: double.infinity,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroup5fjbd73 (RTjvaJvutapeQWqYqe5FJB)
                      padding: EdgeInsets.fromLTRB(0*fem, 5*fem, 87*fem, 3*fem),
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // frame44L1T (269:6549)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 2*fem),
                            width: 14*fem,
                            height: 16*fem,
                            child: Image.asset(
                              'assets/upload-page/images/frame-44-DUZ.png',
                              width: 14*fem,
                              height: 16*fem,
                            ),
                          ),
                          Text(
                            // addanitembxy (269:6551)
                            'Add an Item',
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
                      // frame45693 (269:6552)
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
              // showcaseyouraccomplishmentyour (270:7716)
              width: double.infinity,
              constraints: BoxConstraints (
                maxWidth: 296*fem,
              ),
              child: Text(
                'Showcase your accomplishment- your latest \nproducts, ideas and projects will be featured \non your profile.',
                textAlign: TextAlign.center,
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 14*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.035*fem,
                  color: const Color(0xff000000),
                ),
              ),
            ),
            Container(
              // autogroupnnjwdAu (RTjuQWYYu42ySTNyNjNNJw)
              padding: EdgeInsets.fromLTRB(16*fem, 22*fem, 16*fem, 39*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame57vfo (269:6554)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 199*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // frame851RcZ (269:6576)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                          width: double.infinity,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(
                                // frame55YBP (269:6577)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9*fem),
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // descriptionrhs (269:6578)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                      child: Text(
                                        'Description*',
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
                                      // frame47X3K (269:6579)
                                      padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 18*fem, 12*fem),
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
                                        'Enter the details of what you you\'d like to share.',
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
                                // 5U9 (269:6581)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 8*fem, 0*fem),
                                child: Text(
                                  '0/750',
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
                        SizedBox(
                          // frame52MRf (270:7793)
                          width: 299*fem,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // frame49rtD (270:7794)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      // addfilemVP (270:7795)
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
                                      // weacceptdocpdfjpegpngandgifpic (270:7796)
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
                                // frame414H (270:7797)
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
                                      // frame35Zw (270:7798)
                                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                                      width: 50*fem,
                                      height: 50*fem,
                                      child: Image.asset(
                                        'assets/upload-page/images/frame-3-Ssf.png',
                                        width: 50*fem,
                                        height: 50*fem,
                                      ),
                                    ),
                                    Text(
                                      // dropfileshereAbP (270:7800)
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
                      ],
                    ),
                  ),
                  Container(
                    // byclickingonpublishyouacceptth (269:6582)
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