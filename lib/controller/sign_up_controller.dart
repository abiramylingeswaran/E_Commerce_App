import 'package:flutter/material.dart';
import 'package:e_commerce_app/model/signup_model.dart';

class SignUpController {
  final TextEditingController usernameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final GlobalKey<FormState> formKey;
  final BuildContext context;

  SignUpController({
    required this.usernameController,
    required this.emailController,
    required this.passwordController,
    required this.formKey,
    required this.context,
  });

  void signUp() {
    if (formKey.currentState!.validate()) {
      final user = SignupModel(
        username: usernameController.text,
        email: emailController.text,
        password: passwordController.text,
      );

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Sign-Up Successful for ${user.username}')),
      );
    }
  }
}
