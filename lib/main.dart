import 'package:biznugget/app.dart';
import 'package:biznugget/core/common/models/item_model/item_model.dart';
import 'package:biznugget/bloc_observer.dart';
import 'package:biznugget/core/utils/dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ItemModelAdapter());
  Bloc.observer = MyBlocObserver();


  runApp(const Biznugget());
}

