import 'package:biznugget/core/common/widgets/big_text.dart';
import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubits/business_home_cubit/business_home_cubit.dart';
import '../widgets/bh_drawer.dart';
import '../widgets/business_home_screen_widgets/bh_expandable_cards.dart';
import '../widgets/business_home_screen_widgets/bh_instructions/bh_instructions_slider.dart';
import '../widgets/custom_app_bar.dart';

class BusinessHomeScreen extends StatelessWidget {
  BusinessHomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _drawerKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    BusinessHomeCubit bhCubit = BlocProvider.of<BusinessHomeCubit>(context);

    return SafeArea(
      child: BlocProvider(
        create: (context) => BusinessHomeCubit(),
        child: Scaffold(
          key: _drawerKey,
          drawer: const BHDrawer(),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: Dimensions.height30),
            child: Column(
              children: [
                SizedBox(height: Dimensions.height20),
                // app bar
                SizedBox(
                    height: Dimensions.height47,
                    child: BHCustomAppBar(
                      drawerKey: _drawerKey,
                    )),
                SizedBox(height: Dimensions.height60),
                // instructions slider
                const SBInstructionsSlider(),
                SizedBox(height: Dimensions.height65),
                const BigText(
                    text: "What are you doing\ntoday?",
                    maxLines: 2,
                    textAlign: TextAlign.center),
                SizedBox(height: Dimensions.height20),
                // provide expandable card
                SBExpandableCard(
                  article:
                      BlocProvider.of<BusinessHomeCubit>(context).articles[0],
                  title: 'Sell',
                  color: AppColors.primaryColor2,
                  padding: EdgeInsets.only(left: Dimensions.width30),
                ),
                SizedBox(height: Dimensions.height25),
                // buy expandable card
                SBExpandableCard(
                  article: bhCubit.articles[1],
                  title: 'Buy',
                  color: AppColors.primaryColor1,
                  padding: EdgeInsets.only(left: Dimensions.width25),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
