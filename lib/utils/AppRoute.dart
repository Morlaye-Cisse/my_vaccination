import 'package:get/get.dart';
import 'package:my_vaccination/Main.page.dart';
import 'package:my_vaccination/carnet.view.dart';
import 'package:my_vaccination/home.view.dart';
import 'package:my_vaccination/login.view.dart';
import 'package:my_vaccination/rv.view.dart';

class AppRoutes {
  static const HOME = '/';
  // static const RV = '/rv';
  // static const LOG = '/login';
  // static const CARNET = '/carnet';

  static final routes = [
    GetPage(name: HOME, page: () => MainPage()),
    // GetPage(name: RV, page: () => RvView()),
    // GetPage(name: LOG, page: () => LoginView()),
    // GetPage(name: CARNET, page: () => CarnetView()),
  ];
}
