import 'package:biznugget/features/payment/constants/color_const.dart';
import 'package:biznugget/features/payment/constants/payment_dimention.dart';
import 'package:flutter/material.dart';

typedef Fn = Function();

class BackNavigationButton extends StatelessWidget {
  final Fn opressed;
  const BackNavigationButton({super.key, required this.opressed()});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: opressed(),
      child: const Icon(
        color: kBackNavBtnColor,
        Icons.arrow_back,
        size: kBackNavBtnRadius,
      ),
    );
  }
}
