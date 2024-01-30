import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ktp_project/application/pages/input_user/input_user.dart';
import 'package:ktp_project/application/pages/user_list/user_list.dart';
import 'package:ktp_project/application/theme/theme.dart';
import 'package:ktp_project/data/models/user_data_model.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(UserDataModelAdapter());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'KTP App',
      theme: MyTheme.lightTheme(context),
      home: const UserListPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
