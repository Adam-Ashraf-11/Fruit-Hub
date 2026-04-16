import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SignupViewBody extends StatelessWidget {
  const SignupViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: hlPadding),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const Gap(24),
            const CustomTextFormFeild(
              hintText: 'الاسم كامل',
              keyboardType: TextInputType.emailAddress,
            ),
            const Gap(16),
            const CustomTextFormFeild(
              hintText: 'البريد الإلكتروني',
              keyboardType: TextInputType.visiblePassword,
            ),
            const Gap(16),
            const CustomTextFormFeild(
              hintText: 'كلمة المرور',
              keyboardType: TextInputType.visiblePassword,
              sufIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
