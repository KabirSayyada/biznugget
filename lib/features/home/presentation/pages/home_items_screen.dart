import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/presentation/widgets/home_custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeItemsScreen extends StatelessWidget {
  const HomeItemsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BlocProvider(
          create: (context) => HomeScreenBloc()..add(FetchAllItems()),
          child: BlocBuilder<HomeScreenBloc, HomeScreenState>(
            builder: (context, state) {
              if (state is FetchAllItemsLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is FetchAllItemsSuccess) {
                return HomeAllItemsGridview();
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
        ),
      ],
    );
  }
}

/// Home Screen All Items Grid View
class HomeAllItemsGridview extends StatelessWidget {
  const HomeAllItemsGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        padding: const EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: Dimensions.itemCardRatio,
          mainAxisSpacing: Dimensions.height10,
          crossAxisSpacing: Dimensions.width10,
        ),
        itemCount: BlocProvider.of<HomeScreenBloc>(context).items.length,
        itemBuilder: (context, index) {
          return HomeCustomCard(
            index: index,
            item: BlocProvider.of<HomeScreenBloc>(context).items[index],
          );
        },
      ),
    );
  }
}
