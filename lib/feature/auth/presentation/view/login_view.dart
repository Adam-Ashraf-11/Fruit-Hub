import 'package:e_commerce_app/feature/auth/presentation/view/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return  LoginViewBody();
  }
}
