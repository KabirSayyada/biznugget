import '../model/onboarding_model.dart';
import 'widgets/onboarding_tile.dart';
import 'package:biznugget/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _currentPage = 0;
  final PageController _pageController = PageController(
    initialPage: 0,
  );

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  void _onPageChanged(int index) => setState(() {
        _currentPage = index;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Choose Account Type',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  color: AppColor.primaryColor2,
                ),
              ),
              const SizedBox(
                height: 35,
              ),
              Flexible(
                flex: 3,
                child: PageView.builder(
                  scrollDirection: Axis.horizontal,
                  controller: _pageController,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: _onPageChanged,
                  itemCount: onboardingModelData.length,
                  itemBuilder: (ctx, index) => SingleChildScrollView(
                    child: OnboardingTile(
                      onboardingItem: onboardingModelData[index],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AnimatedSmoothIndicator(
                activeIndex: _currentPage,
                count: onboardingModelData.length,
                onDotClicked: (index) {
                  _pageController.jumpToPage(index);
                },
                effect: const JumpingDotEffect(
                  dotColor: AppColor.dotColor,
                  activeDotColor: AppColor.onboardingColor,
                  dotWidth: 10,
                  dotHeight: 10,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () => _pageController.jumpToPage(
                      onboardingModelData.length,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                      child: Text('Skip'),
                    ),
                  ),
                  InkWell(
                    onTap: () => _pageController.nextPage(
                      duration: const Duration(seconds: 1),
                      curve: Curves.bounceInOut,
                    ),
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 18, vertical: 8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(
                            12,
                          ),
                          color: AppColor.onboardingColor),
                      child: const Text(
                        'Next',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
