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
        // selectcategory2TPT (71:11510)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 347*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame13KRf (71:11511)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 22*fem),
              padding: EdgeInsets.fromLTRB(16*fem, 35*fem, 16*fem, 23*fem),
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
                // frame46ZL1 (71:11512)
                width: 251*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame445p9 (71:11513)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 79*fem, 0*fem),
                      width: 14*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-44-eBw.png',
                        width: 14*fem,
                        height: 16*fem,
                      ),
                    ),
                    Text(
                      // selectcategoryZjK (71:11515)
                      'Select category',
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
            ),
            Container(
              // frame77Fs3 (71:11519)
              margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 0*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame479Sd (71:11520)
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
                      'Clothing',
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
                    height: 12*fem,
                  ),
                  Container(
                    // frame64m6d (71:11523)
                    padding: EdgeInsets.fromLTRB(10*fem, 12*fem, 10*fem, 12*fem),
                    width: double.infinity,
                    decoration: BoxDecoration (
                      color: const Color(0x3301c3cc),
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
                      'Bag',
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
                    height: 12*fem,
                  ),
                  Container(
                    // frame65gN1 (71:11526)
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
                      'Foot wear',
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
                    height: 12*fem,
                  ),
                  Container(
                    // frame66F3j (71:11529)
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
                      'Jewelry',
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
                  SizedBox(
                    height: 12*fem,
                  ),
                  Container(
                    // frame67DPs (71:11532)
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
                      'Watches',
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
                    height: 12*fem,
                  ),
                  Container(
                    // frame68Ng5 (71:11535)
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
                      'Wedding wear & accessories',
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
                    height: 12*fem,
                  ),
                  Container(
                    // frame69kwX (71:11562)
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
                      'Clothing accessories',
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
          );
  }
}