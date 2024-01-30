import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ktp_project/data/models/user_data_model.dart';

void initializeDataLayer() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(UserDataModelAdapter());
}
