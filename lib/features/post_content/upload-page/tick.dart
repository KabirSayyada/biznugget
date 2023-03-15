import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 83;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // tickHyw (73:116)
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame872Rj (73:122)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 13.5*fem, 0*fem),
              width: 17.5*fem,
              height: 19.41*fem,
              child: Image.asset(
                'assets/upload-page/images/frame-87.png',
                width: 17.5*fem,
                height: 19.41*fem,
              ),
            ),
            Container(
              // warrantyK9w (73:118)
              margin: EdgeInsets.fromLTRB(0*fem, 0.59*fem, 0*fem, 0*fem),
              child: Text(
                'Warranty',
                style: SafeGoogleFont (
                  'SF UI Text',
                  fontSize: 12*ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.193359375*ffem/fem,
                  letterSpacing: -0.03*fem,
                  color: const Color(0xff830d3f),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}