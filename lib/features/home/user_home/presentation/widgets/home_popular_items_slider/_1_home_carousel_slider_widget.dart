import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/user_home/presentation/widgets/home_popular_items_slider/_2_home_popular_items_slider_widget.dart';
import 'package:biznugget/features/home/user_home/presentation/widgets/home_popular_items_slider/_4_home_popular_items_indicator_widget.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeCarouselSlider extends StatelessWidget {
  const HomeCarouselSlider({super.key});

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
          HomePopularItemsSlider(
              controller: controller,
              duration: Duration(milliseconds: duration)),

          /// this is the indicator
          PopularItemsDotsIndicator(
              controller: controller,
              duration: Duration(milliseconds: (duration / 2).round())),
        ],
      ),
    );
  }
}
