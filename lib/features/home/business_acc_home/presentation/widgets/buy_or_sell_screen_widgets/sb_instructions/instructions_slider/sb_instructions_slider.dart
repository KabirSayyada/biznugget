import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/sb_instructions/instructions_slider/sb_slider.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/sb_instructions/instructions_slider/sb_slider_indicator.dart';
import 'package:carousel_slider/carousel_controller.dart';
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

          /// this is the indicator
          SBSliderIndicator(
              controller: controller,
              duration: Duration(milliseconds: (duration / 2).round())),
        ],
      ),
    );
  }
}
