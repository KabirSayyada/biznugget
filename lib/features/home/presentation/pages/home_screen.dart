import 'package:biznugget/core/helpers/network_helper/bloc/network_bloc.dart';
import 'package:biznugget/features/home/presentation/pages/home_items_screen.dart';
import 'package:biznugget/features/home/presentation/pages/no_internet_conniction_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: BlocProvider.value(
        value: NetworkBloc()..add(NetworkObserve()),
        child: Scaffold(
          body: BlocBuilder<NetworkBloc, NetworkState>(
            builder: (context, state) => _checkState(state),
          ),
        ),
      ),
    );
  }

  _checkState(NetworkState state) {
    if (state is NetworkFailure) {
      return NoInternetConnectionPage();
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

