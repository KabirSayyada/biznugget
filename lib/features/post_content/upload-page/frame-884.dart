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
        // frame88493j (283:78)
        padding: EdgeInsets.fromLTRB(33*fem, 17*fem, 16.99*fem, 38*fem),
        width: double.infinity,
        decoration: BoxDecoration (
          border: Border.all(color: const Color(0x33000000)),
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(15*fem),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              // frame773mau (283:85)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 9.64*fem),
              width: 26.01*fem,
              height: 26.36*fem,
              child: Image.asset(
                'assets/upload-page/images/frame-773.png',
                width: 26.01*fem,
                height: 26.36*fem,
              ),
            ),
            Container(
              // frame887EzH (289:94)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16.01*fem, 16*fem),
              width: 277*fem,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupm3sthss (RTezsgeQDdfSmj66zMm3ST)
                    padding: EdgeInsets.fromLTRB(113*fem, 0*fem, 113*fem, 14*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // frame885kr9 (285:87)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                          width: double.infinity,
                          height: 37*fem,
                          decoration: BoxDecoration (
                            color: const Color(0xff01c3cc),
                            borderRadius: BorderRadius.circular(10*fem),
                          ),
                          child: Center(
                            child: Text(
                              'Paid',
                              style: SafeGoogleFont (
                                'SF UI Text',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.193359375*ffem/fem,
                                letterSpacing: -0.035*fem,
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // frame861E93 (285:88)
                          margin: EdgeInsets.fromLTRB(13*fem, 0*fem, 16*fem, 0*fem),
                          width: double.infinity,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                // 5QZ (285:89)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1*fem, 0*fem),
                                child: Text(
                                  '\$',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                              Text(
                                // 5J5 (285:90)
                                '8',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 20*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2575*ffem/fem,
                                  letterSpacing: -0.05*fem,
                                  color: const Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    // frame886irq (288:93)
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // paymentsuccessfulodP (285:91)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 7*fem),
                          child: Text(
                            'Payment Successful',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.04*fem,
                              color: const Color(0xff1e1e1e),
                            ),
                          ),
                        ),
                        Container(
                          // yourpaymentisinprogressyouracc (285:92)
                          constraints: BoxConstraints (
                            maxWidth: 277*fem,
                          ),
                          child: Text(
                            'Your payment is in progress. Your account\nwill be activated shortly.',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // frame888m6M (289:96)
              margin: EdgeInsets.fromLTRB(60*fem, 0*fem, 75.01*fem, 0*fem),
              width: double.infinity,
              height: 38*fem,
              decoration: BoxDecoration (
                borderRadius: BorderRadius.circular(10*fem),
                gradient: const LinearGradient (
                  begin: Alignment(0, -1),
                  end: Alignment(1, 1.541),
                  colors: <Color>[Color(0xff01c3cc), Color(0xff3f56f2)],
                  stops: <double>[0, 1],
                ),
              ),
              child: Center(
                child: Text(
                  'Okay',
                  style: SafeGoogleFont (
                    'SF UI Text',
                    fontSize: 15*ffem,
                    fontWeight: FontWeight.w600,
                    height: 1.2575*ffem/fem,
                    letterSpacing: -0.0375*fem,
                    color: const Color(0xffffffff),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}