
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../core/utils/colors.dart';
import '../../model/onboarding_model.dart';

class OnboardingTile extends StatelessWidget {
  final OnboardingModel onboardingItem;

  const OnboardingTile({
    required this.onboardingItem,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        const SizedBox(
          height: 16,
        ),
        Container(
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            boxShadow: [
              BoxShadow(
                offset: Offset(0, 2),
                blurRadius: 2,
                color: Color.fromRGBO(0, 0, 0, 0.15),
              ),
            ],
          ),
          width: 315,
          height: 315,
          child: SvgPicture.asset(
            onboardingItem.imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(
          height: 32,
        ),
        Text(
          onboardingItem.title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColors.primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          onboardingItem.desc,
          textAlign: TextAlign.justify,
          style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
