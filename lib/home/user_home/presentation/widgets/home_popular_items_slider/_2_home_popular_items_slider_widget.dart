import 'package:biznugget/core/utils/dimensions.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_screen_bloc/home_screen_bloc.dart';
import '../../cubits/popular_items_slider_index_cubit/popular_items_slider_index_cubit.dart';
import '_3_home_card_for_popular_items_widget.dart';

/// this is the slider widget
class HomePopularItemsSlider extends StatelessWidget {
  const HomePopularItemsSlider({
    super.key,
    required CarouselController controller,
    required this.duration,
  }) : _controller = controller;

  final Duration duration;
  final CarouselController _controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      carouselController: _controller,

      /// todo : featch popular items instead of all items from the bloc
      itemCount: BlocProvider.of<HomeScreenBloc>(context).items.length,
      itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>

          /// this is the slider item
          HomeCardForPopularItemsWidget(
              item: BlocProvider.of<HomeScreenBloc>(context).items[itemIndex]),
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
          /// chabge the index of the slider
          BlocProvider.of<PopularItemsSliderIndexCubit>(context)
              .selectSliderIndex(index);
        },
      ),
    );
  }
}
