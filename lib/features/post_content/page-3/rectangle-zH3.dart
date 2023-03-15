import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // rectangleWr9 (457:33)
        width: double.infinity,
        height: 912*fem,
        child: Image.asset(
          'assets/page-3/images/rectangle-7vD.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}