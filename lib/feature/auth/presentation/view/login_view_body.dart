import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/core/widgets/custom_pass_form_feild.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:e_commerce_app/feature/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/signup_view.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/widgets/auth_switch_label.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/widgets/or_divider.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/widgets/social_login_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String email, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: hlPadding),
      child: SingleChildScrollView(
        child: Form(
          autovalidateMode: autovalidateMode,
          key: formKey,
          child: Column(
            children: [
              const Gap(24),
              CustomTextFormFeild(
                onSaved: (v) {
                  email = v!;
                },
                hintText: 'البريد الالكتروني',
                keyboardType: TextInputType.emailAddress,
              ),
              const Gap(16),
              CustomPassFormFeild(
                onSaved: (v) {
                  password = v!;
                },
              ),
              const Gap(16),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'نسيت كلمة المرور؟',
                    style: AppTextStyles.semiBold13.copyWith(
                      color: AppColors.lightPrimaryColor,
                    ),
                  ),
                ],
              ),
              const Gap(33),
              CustomAppButton(
                title: 'تسجيل الدخول',
                onTPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<LoginCubit>().loginWithEmailAndPassword(
                      email: email,
                      password: password,
                    );
                  } else {
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              const Gap(33),
              AuthSwitchLabel(
                onTap: () =>
                    Navigator.of(context).pushNamed(SignupView.routeName),
                questionText: 'لا تمتلك حساب ؟ ',
                actionText: 'قم بانشاء حساب ',
              ),
              const Gap(53),
              const OrDivider(),
              const Gap(32),
              SocialLoginButton(
                image: Assets.imageSvgGoogle,
                title: 'تسجيل بواسطة جوجل',
                onpressed: () {
                  context.read<LoginCubit>().loginWithGoogle();
                },
              ),
              const Gap(16),
              SocialLoginButton(
                image: Assets.imageSvgApple,
                title: 'تسجيل بواسطة أبل',
                onpressed: () {},
              ),
              const Gap(16),
              SocialLoginButton(
                image: Assets.imageSvgFacebook,
                title: 'تسجيل بواسطة فيسبوك',
                onpressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
