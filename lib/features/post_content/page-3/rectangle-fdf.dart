import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 400;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // rectangle2FP (464:33)
        width: double.infinity,
        height: 912*fem,
        child: Image.asset(
          'assets/page-3/images/rectangle-jt1.png',
          fit: BoxFit.cover,
        ),
      ),
          );
  }
}