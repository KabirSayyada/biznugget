import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/presentation/bloc/home_screen_bloc.dart';
import 'package:biznugget/features/home/presentation/widgets/home_custom_card_widget/home_custom_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

/// Home Screen All Items Grid View
class HomeAllItemsGridview extends StatelessWidget {
  const HomeAllItemsGridview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        padding: _padding(),
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
      ),
    );
  }


  /// padding for grid view
  EdgeInsets _padding() {
    return EdgeInsets.only(
        left: Dimensions.width20,
        right: Dimensions.width25,
        top: Dimensions.height25,
        bottom: Dimensions.height10
    );
  }
}