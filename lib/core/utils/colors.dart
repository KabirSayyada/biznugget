import 'package:flutter/material.dart';

class AppColors {
  // example
  // static const Color primaryColor = Color(0xFF1E88E5);
  static const Color appWhite = Color(0xFFFFFDFD);
  static const Color black = Colors.black;
  static const Color appTextColor = Color(0xff1E1E1E);
  static const Color appBarElevationColor = Color(0xff01C3CC);
  static const Color grey001 = Color(0xffEBEBEB);
  static const Color grey002 = Color(0xffC7C7C7);
  static const Color grey003 = Color(0xffF5F5F5);
  static const Color appRed = Color(0xff830D3F);
  static const Color hintGrey = Color(0xffA6A6A6);

  static const Color primaryColor = Color(0XFF3F56F2);
  static const Color primaryColor2 = Color(0XFF830D3F);
  static const Color onboardingColor = Color(0XFF01C3CC);
  static const Color dotColor = Color(0XFFD9D9D9);

  static const Color primaryColor1 = Color(0xFF01C3CC);
  static const Color secondaryColor = Color(0xFF830D3F);
  static const Color hintColor = Color.fromRGBO(0, 0, 0, 0.66);
  static const Color searchBarBorderColor = Color(0xFFD9D9D9);

  static const Color cardBorderColor1 = Color(0xFF01C3CC);
  static const Color cardBorderColor2 = Color(0xFF3F56F2);
  static const Color cardBorderColor3 = Color(0xFF830D3F);

  static const Color homeSliderDotsColor = Color(0xFFD2D2D2);

  static const Color gradientColor = Color(0xFF7D89FF);
  static const Color gradientColor2 = Color(0xFF3C5BF0);

  static mainGradient() {
    return const RadialGradient(
      colors: [
        primaryColor1,
        primaryColor2,
      ],
      stops: [
        0.25,
        1.0,
      ],
      radius: 3,
    );
  }

  // static Gradient secondGradient () {
  //   return const LinearGradient(
  //     begin: Alignment.topCenter,
  //     end: Alignment.bottomCenter,
  //     colors: [
  //       primaryColor1,
  //       primaryColor2.withOpacity(0.8),
  //     ],
  //     stops: const [
  //       0.25,
  //       1.0,
  //     ],
  //   );
  // }

  static customGradient({
    required Color color1,
    required Color color2,
    Color? color3,
    required Alignment begin,
    required Alignment end,
    required double stop1,
    required double stop2,
    double? stop3,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [
        color1,
        color2,
        if (color3 != null) color3,
      ],
      stops: [
        stop1,
        stop2,
        if (stop3 != null) stop3,
      ],
    );
  }
}
