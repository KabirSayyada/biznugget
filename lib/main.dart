<<<<<<< HEAD
<<<<<<< HEAD
import 'package:biznugget/app.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/bloc_observer.dart';
=======
import 'package:biznugget/features/start_up/presentation/splash_screen.dart';
import 'package:biznugget/features/wishlist/presentation/bloc/wishlist_bloc.dart';
import 'package:biznugget/utils/bloc_observer.dart';
>>>>>>> origin/chuks
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/adapters.dart';
import 'app_config/app_routes/app_router.dart';

<<<<<<< HEAD
=======
import 'package:biznugget/core/common/models/item_model/item_model.dart';
>>>>>>> 18bc0b57ced9dcbd28f66b144f8095833fe24799
import 'core/services/notification_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:biznugget/bloc_observer.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:flutter/material.dart';
import 'package:biznugget/app.dart';


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
=======

void main() {
>>>>>>> origin/chuks
  Bloc.observer = MyBlocObserver();
  // setup notifications
  NotificationService.setup();
}
<<<<<<< HEAD

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
          return MultiBlocProvider(
              providers: [
                // BlocProvider<WishlistBloc>(create: (context) => WishlistBloc()),

                /// add your BlocPrvider here
              ],
              child: MaterialApp.router(
                routerConfig: AppRouter.router,
                debugShowCheckedModeBanner: false,
                title: 'Biznugget-App',
                //home: SplashScreen(),
              ));
        });
=======
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
>>>>>>> origin/chuks
  }
}

=======
>>>>>>> 18bc0b57ced9dcbd28f66b144f8095833fe24799
