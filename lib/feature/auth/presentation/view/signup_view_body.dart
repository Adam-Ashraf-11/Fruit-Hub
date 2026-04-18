
import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/core/widgets/custom_text_form_feild.dart';
import 'package:e_commerce_app/feature/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/widgets/auth_switch_label.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/widgets/terms_and_condetions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

class SignupViewBody extends StatefulWidget {
  const SignupViewBody({super.key});

  @override
  State<SignupViewBody> createState() => _SignupViewBodyState();
}

class _SignupViewBodyState extends State<SignupViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  late String email, password, name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: hlPadding),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const Gap(24),
              CustomTextFormFeild(
                onSaved: (v) {
                  name = v!;
                },
                hintText: 'الاسم كامل',
                keyboardType: TextInputType.emailAddress,
              ),
              const Gap(16),
              CustomTextFormFeild(
                onSaved: (v) {
                  email = v!;
                },
                hintText: 'البريد الإلكتروني',
                keyboardType: TextInputType.visiblePassword,
              ),
              const Gap(16),
              CustomTextFormFeild(
                onSaved: (v) {
                  password = v!;
                },
                hintText: 'كلمة المرور',
                keyboardType: TextInputType.visiblePassword,
                sufIcon: Icon(Icons.remove_red_eye, color: Colors.grey),
              ),
              Gap(16),
              TermsAndConditionsWidget(),
              Gap(30),
              CustomAppButton(
                title: 'إنشاء حساب جديد',
                onTPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    context.read<SignupCubit>().createUserWithEmailAndPassword(
                      email: email,
                      password: password,
                      name: name,
                    );
                    setState(() {
                      autovalidateMode = AutovalidateMode.always;
                    });
                  }
                },
              ),
              Gap(26),
              AuthSwitchLabel(
                questionText: 'تمتلك حساب بالفعل؟',
                actionText: ' تسجيل دخول',
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
