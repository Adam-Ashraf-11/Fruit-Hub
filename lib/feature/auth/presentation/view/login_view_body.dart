import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, title: 'تسجيل الدخول'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: hlPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Gap(24),
              CustomTextFormFeild(
                hintText: 'البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              Gap(16),
              CustomTextFormFeild(
                hintText: 'كلمة المرور',
                keyboardType: TextInputType.visiblePassword,
                sufIcon: Icon(Icons.remove_red_eye_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
