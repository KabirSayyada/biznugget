import 'package:biznugget/core/utils/colors.dart';
import 'package:biznugget/features/bottom_navigation_bar/presentation/cubits/bottom_navigation_bar_cubit.dart';
import 'package:biznugget/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavigationBarPage extends StatelessWidget {
  const BottomNavigationBarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationBarCubit, BottomNavigationBarState>(
        builder: (context, state) {
      return Scaffold(
        /// current screen
        body: _buildBody(state, context),
        /// bottom navigation bar
        bottomNavigationBar: ConvexAppBar(
          items: BlocProvider.of<BottomNavigationBarCubit>(context)
              .tabsOfBottomNavigationBar,
          initialActiveIndex: 0, //optiona
          /// changing current screen
          onTap: (int selectedIndex) {
            BlocProvider.of<BottomNavigationBarCubit>(context)
                .selectTab(selectedIndex);
          },
          color: Colors.white,
          backgroundColor: AppColors.primaryColor1,
        ),
      );
    });
  }

  _buildBody(BottomNavigationBarState state, BuildContext context) {
    if (state is BottomNavigationBarSelected) {
      /// return current screen :D
      return BlocProvider.of<BottomNavigationBarCubit>(context).currentScreen;
    } else {
      /// the initial state -- don't remove it--
      return HomeScreen();
    }
  }
}
