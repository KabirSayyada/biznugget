import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/presentation/cubits/popular_items_slider_index_cubit/popular_items_slider_index_cubit.dart';
import 'package:biznugget/features/home/presentation/pages/home_screen.dart';
import 'package:biznugget/features/home/presentation/pages/home_screen.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeCarouselSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: BlocProvider.of<HomeScreenBloc>(context).items.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
                  CustomImageWidget(
            bgColor: AppColors.primaryColor1,
            assetImagePath: BlocProvider.of<HomeScreenBloc>(context)
                .items[itemIndex]
                .imageUrl,
            imgHeight: Dimensions.height300,
            imgWidth: double.infinity,
          ),
          options: CarouselOptions(
            height: Dimensions.height200,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              BlocProvider.of<PopularItemsSliderIndexCubit>(context).selectSliderIndex(index);
              /// chabge the index of the slider
            },
          ),
        ),
        BlocBuilder<PopularItemsSliderIndexCubit, PopularItemsSliderIndexState>(
        builder: (context, state) {
          return AnimatedSmoothIndicator(
                /// todo change the activeIndex to the index of the slider
                activeIndex: BlocProvider.of<PopularItemsSliderIndexCubit>(context).selectedIndex,
                count: BlocProvider.of<HomeScreenBloc>(context).items.length,
                effect: WormEffect(),
              );
        },
),
      ],
    );
  }
}
