import 'package:biznugget/app.dart';
import 'package:biznugget/bloc_observer.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

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
