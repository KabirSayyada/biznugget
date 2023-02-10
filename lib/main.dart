import 'package:biznugget/features/start_up/presentation/splash_screen.dart';
import 'package:biznugget/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:biznugget/utils/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {

  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

    @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WishlistBloc>(create: (context) => WishlistBloc()),
        /// add your BlocPrvider here
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Biznugget-App',
        home: SplashScreen(),
      ),
    );
  }
}
