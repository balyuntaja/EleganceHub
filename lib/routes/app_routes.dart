import 'package:flutter_shop_app/pages/get_started_page.dart';
import 'package:flutter_shop_app/pages/home.dart';
import 'package:flutter_shop_app/pages/login_page.dart';
import 'package:flutter_shop_app/pages/register_page.dart';
import 'package:flutter_shop_app/routes/app_routes_named.dart';
import 'package:get/get.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesNamed.getStartedPage, page: () => GetStartedPage()),
    GetPage(name: AppRoutesNamed.loginPage, page: () => LoginPage()),
    GetPage(name: AppRoutesNamed.registerPage, page: () => RegisterPage()),
    GetPage(name: AppRoutesNamed.homePage, page: () => HomePage()),
  ];
}
