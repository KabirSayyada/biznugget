import 'package:biznugget/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../app_config/app_routes/route_path.dart';
import '../../../presentation/widgets/custom_appbar.dart';
import '../../../utils/colors.dart';
import 'share_service.dart';

class ShareServiceSpecialty extends StatefulWidget {
  const ShareServiceSpecialty({super.key});

  @override
  State<ShareServiceSpecialty> createState() => _ShareServiceSpecialtyState();
}

class _ShareServiceSpecialtyState extends State<ShareServiceSpecialty> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 375;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      backgroundColor: AppColor.appWhite,
      appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight.h),
          child: CustomAppBar(
            title: "Specialty",
            suffixWidget: AppBarButton(
              title: "Save",
              buttonColor: [
                const Color(0xff01C3CC).withOpacity(0.3),
                const Color(0xff3F56F2).withOpacity(0.3),
              ],
            ),
            onTap: () {
              context.push(RoutePath.shareServiceSpecialty);
            },
          )),
      body: SizedBox(
        width: double.infinity,
        child: Container(
          // selectcategoryVWd (101:65)
          padding: EdgeInsets.fromLTRB(0 * fem, 2 * fem, 0 * fem, 32.41 * fem),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: Color(0xfffffcfc),
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // choose2to5ofyourbestpracticein (101:109)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 37 * fem, 20 * fem),
                    child: Text(
                      'Choose 2 to 5 of your best practice in design.',
                      style: SafeGoogleFont(
                        'SF UI Text',
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.193359375 * ffem / fem,
                        letterSpacing: -0.035 * fem,
                        color: const Color(0xff1e1e1e),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // frame338S1s (102:161)
                        padding: EdgeInsets.fromLTRB(
                            10 * fem, 11 * fem, 21 * fem, 11 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          border: Border.all(color: const Color(0x33404040)),
                          color: const Color(0xffffffff),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // chooseyourexpertiseJ45 (102:162)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 150 * fem, 0 * fem),
                              child: Text(
                                'Choose your expertise',
                                style: SafeGoogleFont(
                                  'SF UI Text',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375 * ffem / fem,
                                  letterSpacing: -0.035 * fem,
                                  color: const Color(0xff404040),
                                ),
                              ),
                            ),
                            SizedBox(
                              // vectorMo3 (102:163)
                              width: 10 * fem,
                              height: 5 * fem,
                              child: Image.asset(
                                'assets/upload-page/images/vector-eJZ.png',
                                width: 10 * fem,
                                height: 5 * fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13 * fem,
                      ),
                      Container(
                        // frame63eXF (104:5)
                        padding: EdgeInsets.fromLTRB(
                            12 * fem, 12 * fem, 259.42 * fem, 12 * fem),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: const Color(0x7fffffff),
                          borderRadius: BorderRadius.circular(10 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // vector8BX (104:6)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 7 * fem, 0 * fem),
                              width: 17.58 * fem,
                              height: 17.59 * fem,
                              child: Image.asset(
                                'assets/upload-page/images/vector-477.png',
                                width: 17.58 * fem,
                                height: 17.59 * fem,
                              ),
                            ),
                            Container(
                              // search1m7 (104:7)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Search',
                                style: SafeGoogleFont(
                                  'SF UI Text',
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w500,
                                  height: 1.193359375 * ffem / fem,
                                  letterSpacing: -0.035 * fem,
                                  color: const Color(0xff1e1e1e),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 13 * fem,
                      ),
                      Container(
                        // frame807fam (102:164)
                        width: double.infinity,
                        decoration: const BoxDecoration(
                          color: Color(0xffffffff),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // frame787Y8m (102:165)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 232 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle321HF (102:166)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // banneradu7j (102:167)
                                    'Banner ad',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame7901Am (102:168)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 236 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32GcV (102:169)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Container(
                                    // cartoonadmZF (102:170)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Cartoon ad',
                                      style: SafeGoogleFont(
                                        'SF UI Text',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: -0.035 * fem,
                                        color: const Color(0xff404040),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame7913Wm (102:171)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 96 * fem, 9.5 * fem),
                              width: double.infinity,
                              height: 39 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group6uos (104:29)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(5 * fem,
                                        4.91 * fem, 5 * fem, 5.09 * fem),
                                    width: 20 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffd9d9d9),
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                    ),
                                    child: Center(
                                      // rectangle32nMs (104:31)
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 10 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(67 * fem),
                                            color: const Color(0xff01c3cc),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text(
                                    // dmodelsandproductdesigntA1 (102:173)
                                    '3d models and product design',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame792mjb (102:174)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 237 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle323SD (102:175)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Container(
                                    // illustrationvku (102:176)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Illustration',
                                      style: SafeGoogleFont(
                                        'SF UI Text',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: -0.035 * fem,
                                        color: const Color(0xff404040),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame805PuP (104:24)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 165 * fem, 9.5 * fem),
                              width: double.infinity,
                              height: 39 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group6c1T (104:26)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(5 * fem,
                                        4.91 * fem, 5 * fem, 5.09 * fem),
                                    width: 20 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffd9d9d9),
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                    ),
                                    child: Center(
                                      // rectangle32UJZ (104:28)
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 10 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(67 * fem),
                                            color: const Color(0xff01c3cc),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // webandmobiledesignz21 (104:25)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Web and mobile design',
                                      style: SafeGoogleFont(
                                        'SF UI Text',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: -0.035 * fem,
                                        color: const Color(0xff404040),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame794TgH (102:180)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 243 * fem, 9.5 * fem),
                              width: double.infinity,
                              height: 39 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group68nR (104:35)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(5 * fem,
                                        4.91 * fem, 5 * fem, 5.09 * fem),
                                    width: 20 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffd9d9d9),
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                    ),
                                    child: Center(
                                      // rectangle32D3B (104:37)
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 10 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(67 * fem),
                                            color: const Color(0xff01c3cc),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // uxdesign8A9 (102:182)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'UX design',
                                      style: SafeGoogleFont(
                                        'SF UI Text',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: -0.035 * fem,
                                        color: const Color(0xff404040),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame7951Uq (102:183)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 218 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle326WH (102:184)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // logodesignzrZ (102:185)
                                    'Logo design',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame7966Po (102:186)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 149 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32AeZ (102:187)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // portraitandcaricaturesJ5 (102:188)
                                    'Portrait and caricature',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame797yc1 (102:189)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 219 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32TXB (102:190)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // flyerdesignAAh (102:191)
                                    'Flyer design',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame798GUd (102:192)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 185 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32MFB (102:193)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // characterdesigndiV (102:194)
                                    'Character design',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame799kHK (102:195)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 97 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32RuF (102:196)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Container(
                                    // businesscardsandinvitationcard (102:197)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Business cards and invitation cards',
                                      style: SafeGoogleFont(
                                        'SF UI Text',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: -0.035 * fem,
                                        color: const Color(0xff404040),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame800Ze5 (102:198)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 208 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32SSy (102:199)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // infographic84u (102:200)
                                    'Infographic',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame801ENq (102:201)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 200 * fem, 9.5 * fem),
                              width: double.infinity,
                              height: 39 * fem,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // group67Bj (104:32)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    padding: EdgeInsets.fromLTRB(5 * fem,
                                        4.91 * fem, 5 * fem, 5.09 * fem),
                                    width: 20 * fem,
                                    height: double.infinity,
                                    decoration: BoxDecoration(
                                      color: const Color(0xffd9d9d9),
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                    ),
                                    child: Center(
                                      // rectangle32yDw (104:34)
                                      child: SizedBox(
                                        width: double.infinity,
                                        height: 10 * fem,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(67 * fem),
                                            color: const Color(0xff01c3cc),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    // packagingdesign5Gy (102:203)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 1 * fem, 0 * fem, 0 * fem),
                                    child: Text(
                                      'Packaging design',
                                      style: SafeGoogleFont(
                                        'SF UI Text',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2575 * ffem / fem,
                                        letterSpacing: -0.035 * fem,
                                        color: const Color(0xff404040),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame802wa5 (102:204)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 166 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32REM (102:205)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // socialmediadesigniz9 (102:206)
                                    'Social media design',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame803qYy (102:207)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 13 * fem),
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 116 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32KU9 (102:208)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // tshirtsandmerchandizingRGH (102:209)
                                    'T-shirts and merchandizing',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // frame804j25 (102:210)
                              padding: EdgeInsets.fromLTRB(
                                  10 * fem, 9.5 * fem, 125 * fem, 9.5 * fem),
                              width: double.infinity,
                              decoration: const BoxDecoration(
                                color: Color(0xffffffff),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    // rectangle32Dxq (102:211)
                                    margin: EdgeInsets.fromLTRB(
                                        0 * fem, 0 * fem, 12 * fem, 0 * fem),
                                    width: 20 * fem,
                                    height: 20 * fem,
                                    decoration: BoxDecoration(
                                      borderRadius:
                                          BorderRadius.circular(67 * fem),
                                      color: const Color(0xffd9d9d9),
                                    ),
                                  ),
                                  Text(
                                    // bookcoverandstationeryjRP (102:212)
                                    'Book cover and stationery',
                                    style: SafeGoogleFont(
                                      'SF UI Text',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.193359375 * ffem / fem,
                                      letterSpacing: -0.035 * fem,
                                      color: const Color(0xff404040),
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
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
