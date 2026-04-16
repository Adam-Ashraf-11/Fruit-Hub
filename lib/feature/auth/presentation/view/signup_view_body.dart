import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/widgets/auth_switch_label.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/widgets/terms_and_condetions.dart';
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
            Gap(16),
            TermsAndConditionsWidget(),
            Gap(30),
            CustomAppButton(title: 'إنشاء حساب جديد', onTPressed: () {}),
            Gap(26),
            AuthSwitchLabel(
              questionText: 'تمتلك حساب بالفعل؟',
              actionText: ' تسجيل دخول',
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),
    );
  }
}
