import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/presentation/bloc/popular_items_slider_index_cubit/popular_items_slider_index_cubit.dart';
import 'package:biznugget/features/home/presentation/widgets/home_all_items_gridview_widget.dart';
import 'package:biznugget/features/home/presentation/widgets/home_carousel_slider_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeItemsScreen extends StatelessWidget {
  const HomeItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
      HomeScreenBloc()
        ..add(FetchAllItems()),
      child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
        builder: (context, state) {
          if (state is FetchAllItemsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is FetchAllItemsSuccess) {
            return Column(
              children: [
                BlocProvider(
                  create: (context) => PopularItemsSliderIndexCubit(),
                  child: HomeCarouselSlider(),
                ),
                HomeAllItemsGridview(),
              ],
            );
          } else if (state is FetchAllItemsFailure) {
            return const Center(
              child: Text("Something went wrong"),
            );
          } else {
            return const Center(
              child: Text("Something went wrong"),
            );
          }
        },
      ),
    );
  }
}


