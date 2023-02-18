import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/cubits/sell_or_buy_cubit/sell_or_buy_cubit.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/sb_instructions/instructions_card/instructions_card.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
      itemCount: BlocProvider.of<SellOrBuyCubit>(context).instructions.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>

          /// this is the slider card template
          CustomCardForInstructions(
              instruction: BlocProvider.of<SellOrBuyCubit>(context)
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
          BlocProvider.of<SellOrBuyCubit>(context).selectSliderIndex(index);
        },
      ),
    );
  }
}
