import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:ktp_project/application/core/providers/province_regency_provider.dart';
import 'package:ktp_project/application/pages/edit_user/edit_user.dart';
import 'package:ktp_project/application/pages/input_user/input_user.dart';
import 'package:ktp_project/application/pages/user_details/user_details.dart';
import 'package:ktp_project/application/pages/user_list/user_list.dart';
import 'package:ktp_project/application/theme/theme.dart';
import 'package:ktp_project/data/models/dropdown_model.dart';
import 'package:ktp_project/data/models/user_data_model.dart';
import 'package:ktp_project/domain/usecases/province_usecase.dart';
import 'package:ktp_project/domain/usecases/regency_usecase.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();

  Hive.registerAdapter(UserDataModelAdapter());
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => DropdownModel()),
    ChangeNotifierProvider(
        create: (_) =>
            ProvinceRegencyProvider(ProvinceUsecase(), RegencyUsecase()))
  ], child: const MyApp()));
}

final _router = GoRouter(initialLocation: '/penduduk', routes: [
  GoRoute(
      name: 'Penduduk List',
      path: '/penduduk',
      builder: (context, state) => const UserListPage()),
  GoRoute(
    name: 'Input Penduduk',
    path: '/penduduk/input',
    builder: (context, state) => const InputPage(),
  ),
  GoRoute(
      name: 'Edit Penduduk',
      path: '/penduduk/edit/:id',
      builder: (context, state) => const EditPage()),
  GoRoute(
      name: 'Penduduk Detail',
      path: '/penduduk/detail/:id',
      builder: (context, state) => const UserDetailPage()),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'KTP App',
      theme: MyTheme.lightTheme(context),
      // home: const UserListPage(),
      routerConfig: _router,
      debugShowCheckedModeBanner: false,
    );
  }
}
