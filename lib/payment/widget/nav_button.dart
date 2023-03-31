import 'package:flutter/material.dart';

import '../constants/color_const.dart';
import '../constants/payment_dimention.dart';

typedef Fn = void Function();

class BackNavigationButton extends StatelessWidget {
  final Fn opressed;
  final Color color;
  const BackNavigationButton(
      {super.key, required this.opressed, this.color = kBackNavBtnColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: opressed,
      child: Icon(
        color: color,
        Icons.arrow_back_ios,
        size: kBackNavBtnRadius,
      ),
    );
  }
}
