import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/user_home/presentation/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/user_home/presentation/cubits/popular_items_slider_index_cubit/popular_items_slider_index_cubit.dart';
import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

/// this is the indicator widget
class PopularItemsDotsIndicator extends StatelessWidget {
  const PopularItemsDotsIndicator({
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
      child: BlocBuilder<PopularItemsSliderIndexCubit,
          PopularItemsSliderIndexState>(
        builder: (context, state) {
          return AnimatedSmoothIndicator(
            duration: duration,
            activeIndex: BlocProvider.of<PopularItemsSliderIndexCubit>(context)
                .selectedIndex,
            count: BlocProvider.of<HomeScreenBloc>(context).items.length,
            effect: ScrollingDotsEffect(
              spacing: Dimensions.width10,
              dotHeight: Dimensions.height15,
              dotWidth: Dimensions.width15,
              activeDotScale: 1.5,
              dotColor: AppColors.homeSliderDotsColor,
              activeDotColor: Colors.white,
              fixedCenter: true,
            ),
            onDotClicked: (index) {
              /// todo : use popular items instead of all items from the bloc
              BlocProvider.of<PopularItemsSliderIndexCubit>(context)
                  .selectSliderIndex(index);
              controller.animateToPage(index, duration:duration);
            },
          );
        },
      ),
    );
  }
}
