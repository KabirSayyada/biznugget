import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/common/widgets/custom_button_widget.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/home_screen_bloc/home_screen_bloc.dart';
import '../cubits/popular_items_slider_index_cubit/popular_items_slider_index_cubit.dart';
import '../widgets/home_all_items_gridview_widgets/home_all_items_gridview_widget.dart';
import '../widgets/home_popular_items_slider/_1_home_carousel_slider_widget.dart';
import '../widgets/home_search_bar_widget.dart';

class HomeItemsScreen extends StatelessWidget {
  const HomeItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => HomeScreenBloc()..add(FetchAllItems()),
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          if (state is FetchAllItemsLoading) {
            /// Show loading indicator
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FetchAllItemsSuccess) {
            /// Show home screen (all items, popular items and categories)
            return SingleChildScrollView(
              physics: const ScrollPhysics(),
              child: Column(
                children: [
                  SizedBox(height: Dimensions.height15),
                  // search bar
                  HomeSearchBar(),
                  // popular items slider
                  BlocProvider(
                    create: (context) => PopularItemsSliderIndexCubit(),
                    child: const HomeCarouselSlider(),
                  ),
                  SizedBox(height: Dimensions.height15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      BigText(
                          text: 'Categories',
                          color: Colors.black,
                          size: Dimensions.font18,
                          fontWeight: FontWeight.w800),
                      CustomButtonWidget(
                          width: 100,
                          text: 'See All',
                          textColor: AppColors.hintColor,
                          onTap: () {})
                    ],
                  ),
                  SizedBox(height: Dimensions.height15),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: CategoriesRow(),
                  ),
                  SizedBox(height: Dimensions.height30),
                  // all items gridview
                  const HomeAllItemsGridview(),
                ],
              ),
            );

            /// todo : handle failure state
          } else if (state is FetchAllItemsFailure) {
            return const Center(
              child: Text("Something went wrong"),
            );
          } else {
            /// default state to avoid errors
            return const Center(
              child: SizedBox(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}

class CategoriesRow extends StatelessWidget {
  const CategoriesRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomButtonWidget(
          textColor: Colors.black,
          width: Dimensions.width100,
          text: "Products",
          border: Border.all(color: AppColors.primaryColor2),
          onTap: () {},
        ),
        SizedBox(width: Dimensions.width15),
        CustomButtonWidget(
          textColor: Colors.black,
          width: 100,
          text: "Services",
          border: Border.all(color: AppColors.secondaryColor),
          onTap: () {},
        ),
        SizedBox(width: Dimensions.width15),
        CustomButtonWidget(
          textColor: Colors.black,
          width: Dimensions.width100,
          text: "Products",
          border: Border.all(color: AppColors.primaryColor2),
          onTap: () {},
        ),
        SizedBox(width: Dimensions.width15),
        CustomButtonWidget(
          textColor: Colors.black,
          width: 100,
          text: "Services",
          border: Border.all(color: AppColors.secondaryColor),
          onTap: () {},
        ),
      ],
    );
  }
}
