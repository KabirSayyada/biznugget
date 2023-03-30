import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import '../../../utils/colors_.dart';
import '../constant/constant.dart';
import '../widget/Custom_hint_text.dart';
import '../widget/custom_page_indicator.dart';
import '../widget/paid_ads_custom_appbar.dart';
import 'paid_ads_audience_screen.dart';

class PaidAdsBasicInfoScreen extends StatefulWidget {
  const PaidAdsBasicInfoScreen({super.key});

  @override
  State<PaidAdsBasicInfoScreen> createState() => _PaidAdsBasicInfoScreenState();
}

class _PaidAdsBasicInfoScreenState extends State<PaidAdsBasicInfoScreen> {
  List<String> adCategories = [
    'Business ad',
    'Vendor ad',
    'Job openings',
    'Service delivery ad',
    "Freelance ad"
  ];
  String selectedCategory = '';

  final scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldState,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const PaidAdsCustomAppBar(title: 'Basic info'),
              const SizedBox(height: 10),
              CustomPageIndicator(index: 0),
              const SizedBox(height: 25),
              const Padding(
                padding: bodyPadding,
                child: Text(
                  "Basic ad\ninformation",
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
              const CustomHintText(text: "Ad Category"),
              const SizedBox(height: 10),
              Padding(
                padding: bodyPadding,
                child: SizedBox(
                  height: 55,
                  child: DropdownButtonFormField(
                    borderRadius: BorderRadius.circular(10),
                    icon: const Icon(Icons.keyboard_arrow_down,
                        color: AppColor.primaryColor2),
                    items: adCategories
                        .map((e) => DropdownMenuItem(value: e, child: Text(e)))
                        .toList(),
                    onChanged: (val) => setState(() => selectedCategory = val!),
                    decoration: inputDecoration("Select ad category"),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const CustomHintText(text: "Product title"),
              const SizedBox(height: 10),
              Padding(
                padding: bodyPadding,
                child: SizedBox(
                  height: 55,
                  child: TextFormField(
                    decoration: inputDecoration("Enter product title"),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const CustomHintText(text: 'Add cover photo'),
              const SizedBox(height: 10),
              Padding(
                padding: bodyPadding,
                child: DottedBorder(
                    borderType: BorderType.RRect,
                    radius: const Radius.circular(12),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.all(Radius.circular(12)),
                      child: SizedBox(
                        height: 86,
                        width: 158,
                        child: InkWell(
                          onTap: () {
                            scaffoldState.currentState!
                                .showBottomSheet((ctx) => SafeArea(
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(20),
                                        child: Container(
                                          color: Colors.red,
                                        ),
                                      ),
                                    ));
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                  radius: 27,
                                  backgroundColor:
                                      AppColor.hintGrey.withOpacity(0.3),
                                  child: const Icon(
                                    Icons.image,
                                    size: 30,
                                    color: Colors.black,
                                  )),
                              const Text('Add photo here')
                            ],
                          ),
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 10),
              const CustomHintText(text: "Product description"),
              const SizedBox(height: 10),
              Padding(
                padding: bodyPadding,
                child: TextFormField(
                  maxLines: 5,
                  decoration: inputDecoration("Describe your product"),
                ),
              ),
              const SizedBox(height: 25),
              Padding(
                padding: bodyPadding,
                child: MaterialButton(
                  height: 50,
                  shape: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(12)),
                  minWidth: double.infinity,
                  onPressed: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (ctx) => const PaidAdsAudienceScreen(i: 1))),
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
