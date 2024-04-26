import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:intl/date_symbol_data_file.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:my_vaccination/home.view.dart';
import 'package:my_vaccination/rv.view.dart';
import 'package:my_vaccination/splash.view.dart';
import 'package:my_vaccination/utils/AppRoute.dart';

void main() {
  // runApp(const MyApp());
  initializeDateFormatting().then((_) => runApp(const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: AppRoutes.HOME,
      getPages: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
