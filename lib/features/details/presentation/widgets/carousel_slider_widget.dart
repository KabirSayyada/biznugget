import 'package:biznugget/core/utils/assets_manager.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarouselSliderWidget extends StatefulWidget {
  CarouselSliderWidget({Key? key}) : super(key: key);
  int counter = 0;
  @override
  State<CarouselSliderWidget> createState() => _CarouselSliderWidgetState();
}

class _CarouselSliderWidgetState extends State<CarouselSliderWidget> {
  @override
  Widget build(BuildContext context) {
    final CarouselController _controller = CarouselController();

    final List<String> imageList = [
      "https://cdn.pixabay.com/photo/2017/12/03/18/04/christmas-balls-2995437_960_720.jpg",
      "https://cdn.pixabay.com/photo/2017/12/13/00/23/christmas-3015776_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/19/10/55/christmas-market-4705877_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/20/00/03/road-4707345_960_720.jpg",
      "https://cdn.pixabay.com/photo/2019/12/22/04/18/x-mas-4711785__340.jpg",
      "https://cdn.pixabay.com/photo/2016/11/22/07/09/spruce-1848543__340.jpg"
    ];
    return Column(
      children: [
        CarouselSlider.builder(
          carouselController: _controller,
          itemCount: imageList.length,
          itemBuilder:
              (BuildContext context, int itemIndex, int pageViewIndex) =>
              CustomImageWidget(
                bgColor: AppColors.primaryColor1,
                assetImagePath: AppImages.item1,
                imgHeight: Dimensions.height300,
                imgWidth: double.infinity,
              ),
          options: CarouselOptions(
            height: 200,
            aspectRatio: 1,
            viewportFraction: 1,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                widget.counter = index;
              });
            },
          ),
        ),
        AnimatedSmoothIndicator(

          activeIndex: widget.counter,
          count: imageList.length,
          effect: WormEffect(),

        ),
      ],
    );
  }

}
