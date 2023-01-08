import 'package:get/get.dart';
import 'package:localization/views/home/home.dart';

import 'app_routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.home,
      page: () => const MyHomePage(),
    ),
  ];
}
