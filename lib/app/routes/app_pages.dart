import 'package:get/get.dart';

import 'package:travel/app/modules/bottombar/bindings/bottombar_binding.dart';
import 'package:travel/app/modules/bottombar/views/bottombar_view.dart';
import 'package:travel/app/modules/home/bindings/home_binding.dart';
import 'package:travel/app/modules/home/views/home_view.dart';
import 'package:travel/app/modules/setting/bindings/setting_binding.dart';
import 'package:travel/app/modules/setting/views/setting_view.dart';
import 'package:travel/app/modules/welcome/bindings/welcome_binding.dart';
import 'package:travel/app/modules/welcome/views/welcome_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.BOTTOMBAR;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.WELCOME,
      page: () => WelcomeView(),
      binding: WelcomeBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOMBAR,
      page: () => BottombarView(),
      binding: BottombarBinding(),
    ),
    GetPage(
      name: _Paths.SETTING,
      page: () => SettingView(),
      binding: SettingBinding(),
    ),
  ];
}
