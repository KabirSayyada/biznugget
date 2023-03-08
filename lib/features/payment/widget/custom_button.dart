import 'package:biznugget/features/payment/constants/color_const.dart';
import 'package:biznugget/features/payment/widget/custom_container.dart';
import 'package:biznugget/features/payment/widget/custom_text_widget.dart';

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final Function() oppressed;
  const CustomButton(
      {super.key, required this.oppressed(), required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: oppressed(),
      child: CustomContainer(
          color: kPaymentIconColor,
          child: Center(child: PaymentTextWidget(title: title))),
    );
  }
}
