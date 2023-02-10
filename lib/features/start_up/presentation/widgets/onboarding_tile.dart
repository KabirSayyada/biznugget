import 'package:biznugget/features/start_up/model/onboarding_model.dart';
import 'package:biznugget/utils/colors.dart';
import 'package:flutter/material.dart';

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
      children: <Widget>[
        const SizedBox(
          height: 24,
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(249),
            boxShadow: const [
              BoxShadow(
                offset: Offset(0, 4),
                blurRadius: 4,
                color: Color.fromRGBO(0, 0, 0, 0.15),
              ),
            ],
            image: DecorationImage(
              image: AssetImage(
                onboardingItem.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
          width: 315,
          height: 315,
        ),
        const SizedBox(
          height: 24,
        ),
        Text(
          onboardingItem.title,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            color: AppColor.primaryColor,
            fontSize: 24,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 16,
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
