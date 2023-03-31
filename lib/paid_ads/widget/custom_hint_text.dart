import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';
import '../constant/constant.dart';

class CustomHintText extends StatelessWidget {
  final String text;

  const CustomHintText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: bodyPadding,
      child: Text(
        text,
        style: const TextStyle(
            fontSize: 16,
            color: AppColors.primaryColor2,
            fontWeight: FontWeight.w700),
      ),
    );
  }
}
