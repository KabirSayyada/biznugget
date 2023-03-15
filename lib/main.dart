import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';
import 'core/common/models/item_model/item_model.dart';
import 'core/services/notification_service.dart';

Future<void> main() async {
  await _setup();

  runApp(const BiznuggetApp());
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  // setup hive
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  // setup notifications
  NotificationService.setup();
}
