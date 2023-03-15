import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 363;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // connectorq2M (73:142)
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              // ellipse9Yq (73:143)
              width: 8*fem,
              height: 8*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(4*fem),
                border: Border.all(color: const Color(0xffeee2e2)),
              ),
            ),
            Container(
              // vector4Qu (73:144)
              margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 0*fem, 0*fem),
              width: 355*fem,
              height: 26.5*fem,
              child: Image.asset(
                'assets/upload-page/images/vector-mXK.png',
                width: 355*fem,
                height: 26.5*fem,
              ),
            ),
          ],
        ),
      ),
          );
  }
}