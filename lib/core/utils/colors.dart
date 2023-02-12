import 'package:flutter/material.dart';

class AppColors {
  // example
  static const Color primaryColor1 = Color(0xFF01C3CC);
  static const Color primaryColor2 = Color(0xFF3F56F2);
  static const Color secondaryColor = Color(0xFF830D3F);
  static const Color hintColor = Color.fromRGBO(0, 0, 0, 0.66);
  static const Color searchBarBorderColor = Color(0xFFD9D9D9);
  static const Color gradientColor = Color(0xFF7D89FF);

  static const Color cardBorderColor1 = Color(0xFF01C3CC);
  static const Color cardBorderColor2 = Color(0xFF3F56F2);
  static const Color cardBorderColor3 = Color(0xFF830D3F);

  static const Color homeSliderDotsColor = Color(0xFFD2D2D2);



  static mainGradient () {
    return const LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        primaryColor1,
        AppColors.gradientColor,
      ],
      stops: [
        0.25,
        1.0,
      ],
    );
  }


  static customGradient({
    required Color color1,
    required Color color2,
    required Alignment begin,
    required Alignment end,
    required double stop1,
    required double stop2,
  }) {
    return LinearGradient(
      begin: begin,
      end: end,
      colors: [
        color1,
        color2,
      ],
      stops: [
        stop1,
        stop2,
      ],
    );
  }
}
