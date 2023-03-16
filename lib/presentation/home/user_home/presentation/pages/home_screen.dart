import 'package:biznugget/core/helpers/network_helper/bloc/network_bloc.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/home_custom_app_bar_widget.dart';
import '../widgets/hs_drawer.dart';
import 'home_items_screen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: scaffoldKey,
        drawer: const HSDrawer(),
        body: BlocBuilder<NetworkBloc, NetworkState>(
          builder: (context, state) => Padding(
            padding: EdgeInsets.only(
              top: Dimensions.height20,
              left: Dimensions.width30,
              right: Dimensions.width30,
              bottom: Dimensions.height5,
            ),
            child: Column(
              children: [
                // custom app bar
                HomeCustomAppBar(scaffoldKey: scaffoldKey),
                // home screen
                const Expanded(child: HomeItemsScreen()),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// todo : check network state at the beginning of the app not here
// _checkState(NetworkState state) {
//   if (state is NetworkFailure) {
//     return NoInternetConnectionPage();
//   } else if (state is NetworkSuccess) {
//     return HomeItemsScreen();
//   } else {
//     return const Center(
//       child: SizedBox.shrink(
//         child: CircularProgressIndicator(),
//       ),
//     );
//   }
// }
}