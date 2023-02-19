import 'package:biznugget/features/home/business_home/presentation/widgets/business_home_screen_widgets/bh_instructions/bh_instructions_card.dart';
import 'package:biznugget/features/home/business_home/presentation/cubits/business_home_cubit/business_home_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class SBInstructionsSlider extends StatelessWidget {
  const SBInstructionsSlider({super.key});

  final int duration = 600;

  @override
  Widget build(BuildContext context) {
    final CarouselController controller = CarouselController();
    return SizedBox(
      height: Dimensions.height200,

      /// Slider and indicator
      child: Stack(
        children: [
          /// this is the slider
          SBSlider(
              controller: controller,
              duration: Duration(milliseconds: duration)),

          /// this is the indicator (slider indicator)
          SBSliderIndicator(
              controller: controller,
              duration: Duration(milliseconds: (duration / 2).round())),
        ],
      ),
    );
  }
}


/// Slider and indicator
class SBSlider extends StatelessWidget {
  const SBSlider({
    super.key,
    required this.controller,
    required this.duration,
  });

  final Duration duration;
  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: controller,
      itemCount: BlocProvider.of<BusinessHomeCubit>(context).instructions.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>

          /// this is the slider card template
          CustomCardForInstructions(
              instruction: BlocProvider.of<BusinessHomeCubit>(context)
                  .instructions[itemIndex]),
      options: CarouselOptions(
        height: Dimensions.height200,
        viewportFraction: 1,
        enableInfiniteScroll: true,
        autoPlay: true,
        autoPlayAnimationDuration: duration,
        autoPlayCurve: Curves.fastOutSlowIn,
        enlargeCenterPage: true,
        enlargeFactor: 0.3,
        scrollDirection: Axis.horizontal,
        onPageChanged: (index, reason) {
          /// change the index of the indicator
          BlocProvider.of<BusinessHomeCubit>(context).selectSliderIndex(index);
        },
      ),
    );
  }
}

/// this is the indicator (slider indicator)
class SBSliderIndicator extends StatelessWidget {
  const SBSliderIndicator({
    super.key,
    required this.duration,
    required this.controller,
  });

  final Duration duration;
  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.85),
      child: BlocBuilder<BusinessHomeCubit, BusinessHomeState>(
        builder: (context, state) {
          return AnimatedSmoothIndicator(
            duration: duration,
            activeIndex: BlocProvider.of<BusinessHomeCubit>(context).selectedIndex,
            count: BlocProvider.of<BusinessHomeCubit>(context).instructions.length,
            effect: WormEffect(
              spacing: Dimensions.width10,
              dotHeight: Dimensions.height15,
              dotWidth: Dimensions.width15,
              dotColor: AppColors.homeSliderDotsColor,
              activeDotColor: Colors.white,
            ),
            onDotClicked: (index) {
              BlocProvider.of<BusinessHomeCubit>(context).selectSliderIndex(index);
              controller.animateToPage(index, duration: duration);
            },
          );
        },
      ),
    );
  }
}
