import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/home_screen_bloc/home_screen_bloc.dart';
import '../home_custom_card_widget/home_custom_card_widget.dart';

/// Home Screen All Items Grid View
class HomeAllItemsGridview extends StatelessWidget {
  const HomeAllItemsGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: Dimensions.itemCardRatio,
        mainAxisSpacing: Dimensions.height25,
        crossAxisSpacing: Dimensions.width30,
      ),
      itemCount: BlocProvider.of<HomeScreenBloc>(context).items.length,
      itemBuilder: (context, index) {
        return HomeCustomCard(
          index: index,
          item: BlocProvider.of<HomeScreenBloc>(context).items[index],
        );
      },
    );
  }
}
