import 'package:e_commerce_app/screens/CreateAccountScreen.dart';
import 'package:get/get.dart';
import 'package:e_commerce_app/screens/login.dart';
import 'package:e_commerce_app/binding/login_binding.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: '/login',
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: '/create_account',
      page: () => CreateAccountScreen(),
    ),
  ];
}
