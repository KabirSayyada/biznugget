import 'package:biznugget/features/payment/constants/color_const.dart';
import 'package:biznugget/features/payment/constants/payment_dimention.dart';
import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final Widget child;
  final double height;
  final Border? border;
  final double vertical;
  final double horizointal;
  final Color color;
  const CustomContainer(
      {super.key,
      required this.child,
      this.vertical = 8,
      this.height = 45,
      this.horizointal = 16,
      this.border,
      this.color = kPaymentWhiteColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding:
          EdgeInsets.symmetric(vertical: vertical, horizontal: horizointal),
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(kPaymentBorderRadius)),
      child: child,
    );
  }
}
