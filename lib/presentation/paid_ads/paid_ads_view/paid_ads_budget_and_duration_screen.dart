import 'package:flutter/material.dart';

import '../../../utils/colors.dart';
import '../constant/constant.dart';
import '../widget/Custom_hint_text.dart';
import '../widget/custom_page_indicator.dart';
import '../widget/paid_ads_custom_appbar.dart';
import 'paid_ads_review_screen.dart';

class PaidAdsBudgetAndDurationScreen extends StatefulWidget {
  final int i;

  const PaidAdsBudgetAndDurationScreen({super.key, required this.i});

  @override
  State<PaidAdsBudgetAndDurationScreen> createState() =>
      _PaidAdsBudgetAndDurationScreenState();
}

class _PaidAdsBudgetAndDurationScreenState
    extends State<PaidAdsBudgetAndDurationScreen> {
  RangeValues rangeValues = const RangeValues(16, 80);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const PaidAdsCustomAppBar(title: 'Budget & Duration'),
              const SizedBox(height: 10),
              CustomPageIndicator(index: widget.i),
              const SizedBox(height: 25),
              const Padding(
                padding: bodyPadding,
                child: Text(
                  "Set budget and\nduration",
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
              const Center(child: Text('N360.00/day')),
              Theme(
                data: ThemeData(
                    sliderTheme: SliderThemeData(
                        trackHeight: 2.8,
                        thumbColor: AppColor.appBarElevationColor,
                        activeTrackColor: AppColor.appBarElevationColor,
                        inactiveTrackColor: Colors.grey.withOpacity(0.3),
                        valueIndicatorColor: AppColor.appBarElevationColor)),
                child: Slider.adaptive(
                  value: 2500.00,
                  onChanged: (val) {},
                  max: 2500,
                  min: 100,
                ),
              ),
              const SizedBox(height: 12),
              const CustomHintText(text: "Duration"),
              const SizedBox(height: 5),
              CheckboxListTile(
                  activeColor: AppColor.appBarElevationColor,
                  checkColor: Colors.white,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  title: const Text('Run this ad until i pause it'),
                  value: true,
                  onChanged: (v) {}),
              CheckboxListTile(
                  activeColor: AppColor.appBarElevationColor,
                  checkColor: Colors.white,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  title: const Text('Set Duration'),
                  value: true,
                  onChanged: (v) {}),
              const SizedBox(height: 10),
              const Center(child: Text('7 days')),
              Theme(
                data: ThemeData(
                    sliderTheme: SliderThemeData(
                        trackHeight: 2.8,
                        thumbColor: AppColor.appBarElevationColor,
                        activeTrackColor: AppColor.appBarElevationColor,
                        inactiveTrackColor: Colors.grey.withOpacity(0.3),
                        valueIndicatorColor: AppColor.appBarElevationColor)),
                child: Slider.adaptive(
                  value: 2500.00,
                  onChanged: (val) {},
                  max: 2500,
                  min: 100,
                ),
              ),
              Container(height: 1.3, color: AppColor.onboardingColor),
              const Center(
                  child: Text(
                "N2,520.00 over 7 days",
                style: TextStyle(
                    fontSize: 20,
                    color: AppColor.primaryColor2,
                    fontWeight: FontWeight.w700),
              )),
              const Center(child: Text('Total spend')),
              const SizedBox(height: 100),
              Padding(
                padding: bodyPadding,
                child: MaterialButton(
                  height: 50,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  minWidth: double.infinity,
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const PaidAdsReviewScreen(i: 3))),
                  color: AppColor.appBarElevationColor,
                  child: const Text(
                    'Next',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
