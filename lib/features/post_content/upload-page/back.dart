import 'package:biznugget/utils/utils.dart';
import 'package:flutter/material.dart';

class Scene extends StatelessWidget {
  const Scene({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 343;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return SizedBox(
      width: double.infinity,
      child: Container(
        // backYgu (73:126)
        width: double.infinity,
        decoration: BoxDecoration (
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(10*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame59Tos (73:127)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
              width: double.infinity,
              height: 41*fem,
              decoration: BoxDecoration (
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(10*fem),
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
              child: Center(
                child: Text(
                  'Clear',
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
            ),
            Container(
              // frame86bHo (73:130)
              width: double.infinity,
              decoration: BoxDecoration (
                color: const Color(0xffffffff),
                borderRadius: BorderRadius.circular(10*fem),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame62tnh (73:131)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                    width: double.infinity,
                    height: 41*fem,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
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
                    child: Center(
                      child: Text(
                        'Save as draft',
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 14*ffem,
                          fontWeight: FontWeight.w500,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.035*fem,
                          color: const Color(0xff830d3f),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // frame63sPj (73:134)
                    width: double.infinity,
                    height: 41*fem,
                    decoration: BoxDecoration (
                      color: const Color(0xffffffff),
                      borderRadius: BorderRadius.circular(10*fem),
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
                    child: Center(
                      child: Text(
                        'Cancel',
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