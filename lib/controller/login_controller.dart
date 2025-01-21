import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  void login(BuildContext context) {
    if (formKey.currentState?.validate() ?? false) {
      final email = emailController.text;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Login Successful: $email')),
      );
      
    }
  }

  @override
  void onClose() {
    emailController.dispose();
    passwordController.dispose();
    super.onClose();
  }
}
