import 'package:flutter/material.dart';

import '../../../core/utils/colors.dart';

class CustomPageIndicator extends StatelessWidget {
  final int index;

  const CustomPageIndicator({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        4,
        (i) => Expanded(
          child: Padding(
            padding: EdgeInsets.only(left: i == 0 ? 0 : 2),
            child: Container(
                height: 1.3,
                color: i == index ? AppColors.onboardingColor : Colors.grey),
          ),
        ),
      ),
    );
  }
}
