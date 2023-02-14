import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/cubits/sell_or_buy_cubit/sell_or_buy_cubit.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/custom_app_bar.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/sb_drawer/sb_drawer.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/sb_expandable_card/sb_expandable_cards.dart';
import 'package:biznugget/features/home/business_acc_home/presentation/widgets/buy_or_sell_screen_widgets/sb_instructions/instructions_slider/sb_instructions_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';

class SellOrBuyScreen extends StatelessWidget {
  SellOrBuyScreen({Key? key}) : super(key: key);

  final AdvancedDrawerController _advancedDrawerController = AdvancedDrawerController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
        create: (context) => SellOrBuyCubit(),
        child: AdvancedDrawer(
          controller: _advancedDrawerController,
          backdropColor: AppColors.primaryColor1.withOpacity(0.8),
          childDecoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Dimensions.radius10),
          ),
          drawer: const SBDrawer(),
          child: Scaffold(
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: Dimensions.height30),
              child: Column(
                children: [
                  SizedBox(height: Dimensions.height20),
                  // app bar
                  SBCustomAppBar(advancedDrawerController: _advancedDrawerController),
                  SizedBox(height: Dimensions.height60),
                  // instructions slider
                  const SBInstructionsSlider(),
                  SizedBox(height: Dimensions.height60),
                  // provide expandable card
                  SBExpandableCard(
                    article:
                        BlocProvider.of<SellOrBuyCubit>(context).articles[0],
                    title: 'Provide',
                    color: AppColors.primaryColor2,
                    padding: EdgeInsets.only(left: Dimensions.width30),
                  ),
                  SizedBox(height: Dimensions.height25),
                  // buy expandable card
                  SBExpandableCard(
                    article:
                        BlocProvider.of<SellOrBuyCubit>(context).articles[1],
                    title: 'Buy',
                    color: AppColors.primaryColor1,
                    padding: EdgeInsets.only(left: Dimensions.width25),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
