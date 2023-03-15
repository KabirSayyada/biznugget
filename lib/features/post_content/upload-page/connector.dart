import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 191;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // connector41j (73:69)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              // ellipseyPb (73:74)
              width: 8*fem,
              height: 16.13*fem,
              child: Image.asset(
                'assets/upload-page/images/ellipse.png',
                width: 8*fem,
                height: 16.13*fem,
              ),
            ),
            Container(
              // vectortFf (73:75)
              margin: EdgeInsets.fromLTRB(4*fem, 0*fem, 0*fem, 0*fem),
              width: 187*fem,
              height: 485.87*fem,
              child: Image.asset(
                'assets/upload-page/images/vector-jTs.png',
                width: 187*fem,
                height: 485.87*fem,
              ),
            ),
          ],
        ),
      ),
          );
  }
}