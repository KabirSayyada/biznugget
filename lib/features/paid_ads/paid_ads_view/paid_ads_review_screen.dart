import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../constant/constant.dart';
import '../widget/Custom_hint_text.dart';
import '../widget/custom_page_indicator.dart';
import '../widget/paid_ads_custom_appbar.dart';

class PaidAdsReviewScreen extends StatelessWidget {
  final int i;
  const PaidAdsReviewScreen({super.key, required this.i});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            const PaidAdsCustomAppBar(title: 'Review'),
            const SizedBox(height: 10),
            CustomPageIndicator(index: i),
            const SizedBox(height: 25),
            const Padding(
              padding: bodyPadding,
              child: Text(
                "Review\nyour ad",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: bodyPadding,
              child: Text(
                  "Lorem ipsum dolor sit amet consectetur. Venenatis aliquet"),
            ),
            const SizedBox(height: 10),
            Container(height: 1.3, color: AppColor.onboardingColor),
            const SizedBox(height: 10),
            const CustomHintText(text: "Budget"),
            const SizedBox(height: 10),
            const Padding(
                padding: bodyPadding, child: Text('Service delivery')),
            const SizedBox(height: 10),
            const CustomHintText(text: "Audience"),
            const SizedBox(height: 10),
            const Padding(padding: bodyPadding, child: Text('Tribe')),
            const SizedBox(height: 10),
            const CustomHintText(text: "Budget & duration"),
            const SizedBox(height: 10),
            const Padding(
              padding: bodyPadding,
              child: Text('N360.00/day for 7 days'),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: bodyPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "Payment",
                        style: TextStyle(
                            fontSize: 16,
                            color: AppColor.primaryColor2,
                            fontWeight: FontWeight.w700),
                      ),
                      Text('Add new payment method')
                    ],
                  ),
                  const Icon(Icons.keyboard_arrow_right)
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(height: 1.3, color: AppColor.onboardingColor),
            const SizedBox(height: 10),
            const CustomHintText(text: "Cost summary"),
            const SizedBox(height: 10),
            Padding(
                padding: bodyPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Ad budget'),
                    Text('N360.00/day'),
                  ],
                )),
            const SizedBox(height: 10),
            Padding(
                padding: bodyPadding,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Duration'),
                    Text('7 days'),
                  ],
                )),
            const SizedBox(height: 10),
            Padding(
              padding: bodyPadding,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Total spend'),
                  Text('N2,250.00'),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Center(
                child: Text(
              'Lorem ipsum dolor sit amet consectetur. Venenatis aliquet',
              textAlign: TextAlign.center,
            )),
            const SizedBox(height: 100),
            Padding(
              padding: bodyPadding,
              child: MaterialButton(
                height: 50,
                shape: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(12)),
                minWidth: double.infinity,
                onPressed: () => Navigator.of(context)
                    .push(MaterialPageRoute(builder: (ctx) => Scaffold())),
                color: AppColor.appBarElevationColor,
                child: const Text(
                  'Create ad',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      )),
    );
  }
}
