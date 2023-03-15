import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 373;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // userdatapopupCGD (112:61)
        padding: EdgeInsets.fromLTRB(15*fem, 15*fem, 16.5*fem, 28*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xfff5f5f5),
          borderRadius: BorderRadius.circular(20*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame823RPs (112:183)
              margin: EdgeInsets.fromLTRB(1.5*fem, 0*fem, 0*fem, 9*fem),
              width: double.infinity,
              height: 30*fem,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame821uK3 (112:184)
                    margin: EdgeInsets.fromLTRB(0*fem, 5*fem, 175*fem, 5*fem),
                    height: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          // ellipse5ofK (112:185)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13*fem, 0*fem),
                          width: 20*fem,
                          height: 20*fem,
                          decoration: BoxDecoration (
                            borderRadius: BorderRadius.circular(10*fem),
                            color: const Color(0xffd9d9d9),
                            image: const DecorationImage (
                              fit: BoxFit.cover,
                              image: AssetImage (
                                'assets/upload-page/images/ellipse-5-bg.png',
                              ),
                            ),
                          ),
                        ),
                        Text(
                          // roselyninyangUFf (112:186)
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
                    // frame822N69 (112:187)
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/upload-page/images/frame-822-tmb.png',
                      width: 30*fem,
                      height: 30*fem,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame826fb3 (112:194)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 53.5*fem, 0*fem),
              width: 288*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // highestofeducationbsc9m7 (112:62)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.2575*ffem/fem,
                          letterSpacing: -0.035*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Highest of Education:',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2575*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0xff1e1e1e),
                            ),
                          ),
                          const TextSpan(
                            text: '  ',
                          ),
                          TextSpan(
                            text: 'B.sc',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.2575*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0xffa6a6a6),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // schooluniversityofcalabarPhP (112:63)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.035*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          const TextSpan(
                            text: 'School:  ',
                          ),
                          TextSpan(
                            text: 'University of Calabar',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0x7f1e1e1e),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // majorpublicadministrationFd7 (112:64)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.035*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          const TextSpan(
                            text: 'Major:  ',
                          ),
                          TextSpan(
                            text: 'Public Administration',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0x7f1e1e1e),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // certificationsidehustleinterns (112:65)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.035*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Certification:',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0xff1e1e1e),
                            ),
                          ),
                          const TextSpan(
                            text: '  ',
                          ),
                          TextSpan(
                            text: 'Sidehustle internship (2020)',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0x7f1e1e1e),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // websitewwwdatabasecom5Gh (112:189)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.035*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'Website:',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0xff1e1e1e),
                            ),
                          ),
                          const TextSpan(
                            text: '  ',
                          ),
                          TextSpan(
                            text: 'www.database.com',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0xff3f56f2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // frame825H1P (112:193)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 172*fem, 0*fem),
                    padding: EdgeInsets.fromLTRB(4*fem, 2*fem, 0*fem, 2*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // materialsymbolslocationonoutli (112:190)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 10*fem, 0*fem),
                          width: 16*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/upload-page/images/material-symbols-location-on-outline-zg5.png',
                            width: 16*fem,
                            height: 20*fem,
                          ),
                        ),
                        Text(
                          // ejigbolagosqSD (112:192)
                          'Ejigbo, lagos',
                          style: SafeGoogleFont (
                            'SF UI Text',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.193359375*ffem/fem,
                            letterSpacing: -0.035*fem,
                            color: const Color(0x7f1e1e1e),
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