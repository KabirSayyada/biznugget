import 'package:flutter/material.dart';

import '../../../utils/colors_.dart';
import '../constant/constant.dart';
import '../widget/Custom_hint_text.dart';
import '../widget/custom_page_indicator.dart';
import '../widget/paid_ads_custom_appbar.dart';
import 'paid_ads_budget_and_duration_screen.dart';

class PaidAdsAudienceScreen extends StatefulWidget {
  final int i;
  const PaidAdsAudienceScreen({super.key, required this.i});

  @override
  State<PaidAdsAudienceScreen> createState() => _PaidAdsAudienceScreenState();
}

class _PaidAdsAudienceScreenState extends State<PaidAdsAudienceScreen> {
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
              const PaidAdsCustomAppBar(title: 'Audience'),
              const SizedBox(height: 10),
              CustomPageIndicator(index: widget.i),
              const SizedBox(height: 25),
              const Padding(
                padding: bodyPadding,
                child: Text(
                  "Select target\naudience",
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
              const CustomHintText(text: "Audience name"),
              const SizedBox(height: 10),
              Padding(
                padding: bodyPadding,
                child: SizedBox(
                  height: 55,
                  child: TextFormField(
                    decoration: inputDecoration("Enter audience name"),
                  ),
                ),
              ),
              const SizedBox(height: 12),
              const CustomHintText(text: "Age group & gender"),
              const SizedBox(height: 5),
              Theme(
                data: ThemeData(
                    sliderTheme: SliderThemeData(
                        trackHeight: 2.8,
                        thumbColor: AppColor.appBarElevationColor,
                        activeTrackColor: AppColor.appBarElevationColor,
                        inactiveTrackColor: Colors.grey.withOpacity(0.3),
                        valueIndicatorColor: AppColor.appBarElevationColor)),
                child: RangeSlider(
                    values: rangeValues,
                    divisions: 10,
                    labels: RangeLabels(rangeValues.start.toStringAsFixed(0),
                        rangeValues.end.toStringAsFixed(0)),
                    min: 16,
                    max: 80,
                    onChanged: (val) => setState(() => rangeValues = val)),
              ),
              CheckboxListTile(
                  activeColor: AppColor.appBarElevationColor,
                  checkColor: Colors.white,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  title: const Text('Male'),
                  value: true,
                  onChanged: (v) {}),
              CheckboxListTile(
                  activeColor: AppColor.appBarElevationColor,
                  checkColor: Colors.white,
                  checkboxShape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  title: const Text('Female'),
                  value: true,
                  onChanged: (v) {}),
              const SizedBox(height: 10),
              const CustomHintText(text: "Add location"),
              const SizedBox(height: 10),
              Padding(
                padding: bodyPadding,
                child: SizedBox(
                  height: 55,
                  child: TextFormField(
                    decoration: inputDecoration("Add location")
                        .copyWith(prefixIcon: const Icon(Icons.search)),
                  ),
                ),
              ),
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
                      builder: (ctx) =>
                          const PaidAdsBudgetAndDurationScreen(i: 2))),
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
