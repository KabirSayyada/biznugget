import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:biznugget/utils/utils.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 20;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: SizedBox(
        // connectorkx5 (73:81)
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // ellipse5zM (73:96)
              width: 8*fem,
              height: 8*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(4*fem),
                border: Border.all(color: const Color(0xffeee2e2)),
              ),
            ),
            Container(
              // vectorzbX (73:97)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
              width: 16*fem,
              height: 549*fem,
              child: Image.asset(
                'assets/upload-page/images/vector-Dcq.png',
                width: 16*fem,
                height: 549*fem,
              ),
            ),
          ],
        ),
      ),
          );
  }
}