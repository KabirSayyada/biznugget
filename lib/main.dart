import 'package:biznugget/features/splash_screen/presentation/pages/splash_screen.dart';
import 'package:biznugget/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_config/app_routes/app_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
     return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context , child) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WishlistBloc>(create: (context) => WishlistBloc()),

        /// add your BlocPrvider here
      ],
      child: 
      
      MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        title: 'Biznugget-App',
        //home: SplashScreen(),
    ));
  });
  }
}
