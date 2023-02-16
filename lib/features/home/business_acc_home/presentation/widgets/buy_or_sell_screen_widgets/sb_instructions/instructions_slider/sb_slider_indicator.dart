import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/cubits/sell_or_buy_cubit/sell_or_buy_cubit.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

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
      child: BlocBuilder<SellOrBuyCubit, SellOrBuyState>(
        builder: (context, state) {
          return AnimatedSmoothIndicator(
            duration: duration,
            activeIndex: BlocProvider.of<SellOrBuyCubit>(context).selectedIndex,
            count: BlocProvider.of<SellOrBuyCubit>(context).instructions.length,
            effect: WormEffect(
              spacing: Dimensions.width10,
              dotHeight: Dimensions.height15,
              dotWidth: Dimensions.width15,
              dotColor: AppColors.homeSliderDotsColor,
              activeDotColor: Colors.white,
            ),
            onDotClicked: (index) {
              BlocProvider.of<SellOrBuyCubit>(context)
                  .selectSliderIndex(index);
              controller.animateToPage(index, duration: duration);
            },
          );
        },
      ),
    );
  }
}
