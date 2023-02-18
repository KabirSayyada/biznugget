import 'package:biznugget/app.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'app_config/app_routes/app_router.dart';

import 'core/services/notification_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await _setup();

  runApp(const Biznugget());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setup hive
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  // setup bloc
  Bloc.observer = MyBlocObserver();
  // setup notifications
  NotificationService.setup();
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
