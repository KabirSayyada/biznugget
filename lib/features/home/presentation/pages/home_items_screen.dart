import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/presentation/cubits/popular_items_slider_index_cubit/popular_items_slider_index_cubit.dart';
import 'package:biznugget/features/home/presentation/widgets/home_all_items_gridview_widgets/home_all_items_gridview_widget.dart';
import 'package:biznugget/features/home/presentation/widgets/home_custom_app_bar_widget.dart';
import 'package:biznugget/features/home/presentation/widgets/home_popular_items_slider/_1_home_carousel_slider_widget.dart';
import 'package:biznugget/features/home/presentation/widgets/home_search_bar_widget.dart';
import 'package:biznugget/features/wishlist/presentation/widgets/custom_app_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
            return Padding(
              padding: EdgeInsets.only(
                left: Dimensions.width30,
                right: Dimensions.width30,
                bottom: Dimensions.height5,
              ),
              child: SingleChildScrollView(
                physics: const ScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: Dimensions.height15),
                    // custom app bar
                    const HomeCustomAppBar(),
                    SizedBox(height: Dimensions.height20),
                    // search bar
                    HomeSearchBar(),
                    SizedBox(height: Dimensions.height15),
                    // popular items slider
                    BlocProvider(
                      create: (context) => PopularItemsSliderIndexCubit(),
                      child: const HomeCarouselSlider(),
                    ),
                    SizedBox(height: Dimensions.height30),
                    // all items gridview
                    const HomeAllItemsGridview(),
                  ],
                ),
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
              child: SizedBox.shrink(
                child: CircularProgressIndicator(),
              ),
            );
          }
        },
      ),
    );
  }
}
