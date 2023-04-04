import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/adapters.dart';

import 'app.dart';
import 'core/common/models/item_model/item_model.dart';
import 'core/services/notification_service.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await _setup();

  runApp(const ProviderScope(child: App()));
}

Future<void> _setup() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  // setup hive
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  // setup notifications
  NotificationService.setup();
}
