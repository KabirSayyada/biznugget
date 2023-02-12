import 'package:biznugget/core/utils/network_helper/presentation/bloc/network_bloc.dart';
import 'package:biznugget/features/home/presentation/pages/home_items_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider(
          create: (context) => NetworkBloc()..add(NetworkObserve()),
          child: Scaffold(
            body: BlocBuilder<NetworkBloc, NetworkState>(
              builder: (context, state) => _checkState(state),
            ),
          )),
    );
  }

  _checkState(NetworkState state) {
    if (state is NetworkFailure) {
      return const Center(child: Text("No Internet Connection"));
    } else if (state is NetworkSuccess) {
      return HomeItemsScreen();
    } else {
      return const Center(
        child: SizedBox.shrink(
          child: CircularProgressIndicator(),
        ),
      );
    }
  }
}
