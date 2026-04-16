import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/login_view_body.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: customAppBar(context, title: 'تسجيل الدخول'),
      body: LoginViewBody()
    );
  }
}


