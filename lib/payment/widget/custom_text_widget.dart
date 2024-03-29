import 'package:flutter/material.dart';

class PaymentTextWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final double? fontsize;
  final TextAlign? textAlign;

  final FontWeight? fontWeight;

  const PaymentTextWidget(
      {super.key,
      required this.title,
      this.color,
      this.fontsize,
      this.fontWeight,
      this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: textAlign,
      style: TextStyle(
        color: color,
        fontSize: fontsize,
        fontWeight: fontWeight,
      ),
    );
  }
}
