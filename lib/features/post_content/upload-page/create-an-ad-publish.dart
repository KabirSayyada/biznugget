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
        // createanadpublishLEH (71:11770)
        padding: EdgeInsets.fromLTRB(0*fem, 2*fem, 0*fem, 0*fem),
        width: double.infinity,
        decoration: const BoxDecoration (
          color: Color(0xfffffcfc),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // frame12auK (71:11771)
              padding: EdgeInsets.fromLTRB(16*fem, 33*fem, 16*fem, 25*fem),
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
                // frame793Y1 (71:11772)
                width: 228*fem,
                height: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // frame449b3 (71:11773)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 90*fem, 0*fem),
                      width: 14*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/upload-page/images/frame-44-mh7.png',
                        width: 14*fem,
                        height: 16*fem,
                      ),
                    ),
                    Text(
                      // createanadRoT (71:11775)
                      'create an ad',
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
              // autogroupbfh5K89 (RTet3dXKseJUWdHEJ6bFh5)
              padding: EdgeInsets.fromLTRB(0*fem, 16*fem, 0*fem, 43*fem),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // frame80bbT (71:11800)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 66*fem, 12*fem),
                    padding: EdgeInsets.fromLTRB(10*fem, 10*fem, 12*fem, 24*fem),
                    width: 277*fem,
                    decoration: BoxDecoration (
                      color: const Color(0xffebebeb),
                      borderRadius: BorderRadius.circular(10*fem),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // autogroup1sfmeJq (RTetQ7wBgXeQUBpVPx1SFm)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 17*fem),
                          width: double.infinity,
                          height: 124*fem,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // rectangle4jr5 (71:11799)
                                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                                width: 113*fem,
                                height: 124*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(10*fem),
                                  color: const Color(0xffd9d9d9),
                                  image: const DecorationImage (
                                    fit: BoxFit.cover,
                                    image: AssetImage (
                                      'assets/upload-page/images/rectangle-4-bg.png',
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                // autogroupq9vsnpM (RTetXnP5nkFD4AnWL1Q9vs)
                                margin: EdgeInsets.fromLTRB(0*fem, 23*fem, 0*fem, 9*fem),
                                width: 126*fem,
                                height: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text(
                                      // totehandbaggeq (71:11801)
                                      'Tote hand bag',
                                      style: SafeGoogleFont (
                                        'SF UI Text',
                                        fontSize: 18*ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.193359375*ffem/fem,
                                        letterSpacing: -0.045*fem,
                                        color: const Color(0xff1e1e1e),
                                      ),
                                    ),
                                    Container(
                                      // autogroup9gvhbG1 (RTetfwp9biY7CdRUoL9GVh)
                                      padding: EdgeInsets.fromLTRB(0*fem, 28*fem, 0*fem, 0*fem),
                                      width: double.infinity,
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            // group5u1o (71:11806)
                                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 73*fem, 6*fem),
                                            width: double.infinity,
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.center,
                                              children: [
                                                Container(
                                                  // vectorz3F (71:11803)
                                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 1*fem),
                                                  width: 12*fem,
                                                  height: 10*fem,
                                                  child: Image.asset(
                                                    'assets/upload-page/images/vector-d7B.png',
                                                    width: 12*fem,
                                                    height: 10*fem,
                                                  ),
                                                ),
                                                Text(
                                                  // 5Kb (71:11805)
                                                  '8000',
                                                  style: SafeGoogleFont (
                                                    'SF UI Text',
                                                    fontSize: 18*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.2575*ffem/fem,
                                                    letterSpacing: -0.045*fem,
                                                    color: const Color(0xff830d3f),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Text(
                                            // nonnegotiablenE1 (71:11807)
                                            '(non-Negotiable)',
                                            style: SafeGoogleFont (
                                              'SF UI Text',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.193359375*ffem/fem,
                                              letterSpacing: -0.03*fem,
                                              color: const Color(0xff830d3f),
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
                        ),
                        Container(
                          // frame81t29 (71:11812)
                          margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 0*fem, 0*fem),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                // ellipse1PDo (71:11808)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0xff830d3f),
                                ),
                              ),
                              SizedBox(
                                width: 6*fem,
                              ),
                              Container(
                                // ellipse256d (71:11809)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0x7f455a64),
                                ),
                              ),
                              SizedBox(
                                width: 6*fem,
                              ),
                              Container(
                                // ellipse3xgD (71:11810)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0x7f455a64),
                                ),
                              ),
                              SizedBox(
                                width: 6*fem,
                              ),
                              Container(
                                // ellipse4GB7 (71:11811)
                                width: 10*fem,
                                height: 10*fem,
                                decoration: BoxDecoration (
                                  borderRadius: BorderRadius.circular(5*fem),
                                  color: const Color(0x7f455a64),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame83YeR (71:11816)
                    margin: EdgeInsets.fromLTRB(16*fem, 0*fem, 16*fem, 12*fem),
                    padding: EdgeInsets.fromLTRB(10*fem, 0*fem, 13*fem, 0*fem),
                    width: double.infinity,
                    height: 41*fem,
                    decoration: BoxDecoration (
                      border: Border.all(color: const Color(0x66000000)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // productdetails5Gy (71:11813)
                          margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 161*fem, 0*fem),
                          child: Text(
                            'Product Details',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 16*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.04*fem,
                              color: const Color(0xff1e1e1e),
                            ),
                          ),
                        ),
                        Container(
                          // frame90KBK (94:7)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 8*fem),
                          width: 40*fem,
                          height: 33*fem,
                          child: Image.asset(
                            'assets/upload-page/images/frame-90.png',
                            width: 40*fem,
                            height: 33*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame84yWm (71:11818)
                    margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 1*fem, 9*fem),
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // descriptionfuP (71:11817)
                          margin: EdgeInsets.fromLTRB(15*fem, 0*fem, 0*fem, 4*fem),
                          child: Text(
                            'Description',
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
                        Container(
                          // frame82isf (71:11815)
                          padding: EdgeInsets.fromLTRB(14*fem, 12*fem, 14*fem, 8*fem),
                          width: double.infinity,
                          decoration: const BoxDecoration (
                            color: Color(0xfff5f5f5),
                          ),
                          child: Align(
                            // asizeabletotehandbagforyourout (71:11814)
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                              child: Container(
                                constraints: BoxConstraints (
                                  maxWidth: 253*fem,
                                ),
                                child: Text(
                                  'A sizeable tote hand bag for your outdoor event. It\nhas a sizeable purse and a long roe that can be\nhung on shoulder. It is heat resistant and luxurious.',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.03*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame85CAZ (71:11826)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 2*fem, 39*fem),
                    padding: EdgeInsets.fromLTRB(15*fem, 12*fem, 15*fem, 12*fem),
                    width: 373*fem,
                    decoration: const BoxDecoration (
                      color: Color(0xfff5f5f5),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // brandchannelT6V (71:11819)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'SF UI Text',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.193359375*ffem/fem,
                                letterSpacing: -0.035*fem,
                                color: const Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Brand',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                                const TextSpan(
                                  text: ':  ',
                                ),
                                TextSpan(
                                  text: 'Channel',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0x7f1e1e1e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // colororangehBB (71:11820)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'SF UI Text',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.193359375*ffem/fem,
                                letterSpacing: -0.035*fem,
                                color: const Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Color',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                                const TextSpan(
                                  text: ':  ',
                                ),
                                TextSpan(
                                  text: 'Orange',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0x7f1e1e1e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // sizemediumgBX (71:11821)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 11*fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'SF UI Text',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.2575*ffem/fem,
                                letterSpacing: -0.035*fem,
                                color: const Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Size',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                                const TextSpan(
                                  text: ':  ',
                                ),
                                TextSpan(
                                  text: 'Medium',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.2575*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0x7f1e1e1e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // productconditionnewqc9 (71:11822)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'SF UI Text',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.193359375*ffem/fem,
                                letterSpacing: -0.035*fem,
                                color: const Color(0xff000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Product condition',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0xff1e1e1e),
                                  ),
                                ),
                                const TextSpan(
                                  text: ':  ',
                                ),
                                TextSpan(
                                  text: 'New',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0x7f1e1e1e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          // genderfemaleDm7 (71:11823)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 12*fem),
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'SF UI Text',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.193359375*ffem/fem,
                                letterSpacing: -0.035*fem,
                                color: const Color(0xff000000),
                              ),
                              children: [
                                const TextSpan(
                                  text: 'Gender:  ',
                                ),
                                TextSpan(
                                  text: 'Female',
                                  style: SafeGoogleFont (
                                    'SF UI Text',
                                    fontSize: 14*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.193359375*ffem/fem,
                                    letterSpacing: -0.035*fem,
                                    color: const Color(0x7f1e1e1e),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        RichText(
                          // expecteddeliveryinstantXvD (71:11824)
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.035*fem,
                              color: const Color(0xff000000),
                            ),
                            children: [
                              const TextSpan(
                                text: 'Expected delivery:  ',
                              ),
                              TextSpan(
                                text: 'Instant',
                                style: SafeGoogleFont (
                                  'SF UI Text',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.193359375*ffem/fem,
                                  letterSpacing: -0.035*fem,
                                  color: const Color(0x7f1e1e1e),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // frame27e7f (71:11797)
                    margin: EdgeInsets.fromLTRB(51*fem, 0*fem, 86*fem, 43*fem),
                    width: double.infinity,
                    height: 41*fem,
                    decoration: BoxDecoration (
                      borderRadius: BorderRadius.circular(5*fem),
                      gradient: const LinearGradient (
                        begin: Alignment(0, -1),
                        end: Alignment(0.37, 1.529),
                        colors: <Color>[Color(0xff01c3cc), Color(0xff3f56f2)],
                        stops: <double>[0, 1],
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x1e000000),
                          offset: Offset(2*fem, 2*fem),
                          blurRadius: 1*fem,
                        ),
                        BoxShadow(
                          color: const Color(0x1e000000),
                          offset: Offset(-2*fem, -2*fem),
                          blurRadius: 1*fem,
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        'Publish',
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 18*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.045*fem,
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    // byclickingonpublishyouacceptth (71:11796)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 7*fem, 0*fem),
                    constraints: BoxConstraints (
                      maxWidth: 336*fem,
                    ),
                    child: RichText(
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'SF UI Text',
                          fontSize: 12*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.193359375*ffem/fem,
                          letterSpacing: -0.03*fem,
                          color: const Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'By clicking on Publish, you accept the ',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'Terms of Use',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff830d3f),
                            ),
                          ),
                          TextSpan(
                            text: ', follow\nsafety tips, and verify this post does not contain prohibited \nitems.',
                            style: SafeGoogleFont (
                              'SF UI Text',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.193359375*ffem/fem,
                              letterSpacing: -0.03*fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ],
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