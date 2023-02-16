import 'package:biznugget/features/sign_in/sign_in_screen.dart';
import 'package:biznugget/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:biznugget/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:biznugget/utils/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  Bloc.observer = MyBlocObserver();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WishlistBloc>(create: (context) => WishlistBloc()),

        /// add your BlocPrvider here
      ],
      child: const MaterialApp(
        title: 'Biznugget-App',
        home: SigninSreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
