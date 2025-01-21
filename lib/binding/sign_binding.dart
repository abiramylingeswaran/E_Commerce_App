import 'package:flutter/material.dart';
import 'package:e_commerce_app/controller/sign_up_controller.dart';

class SignUpBinding {
  static SignUpController bind(BuildContext context) {
    return SignUpController(
      usernameController: TextEditingController(),
      emailController: TextEditingController(),
      passwordController: TextEditingController(),
      formKey: GlobalKey<FormState>(),
      context: context,
    );
  }
}
