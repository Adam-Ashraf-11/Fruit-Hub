import 'package:e_commerce_app/core/services/get_it_service.dart';
import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart';
import 'package:e_commerce_app/feature/auth/presentation/manager/signup_cubit/signup_cubit.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/signup_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignupView extends StatelessWidget {
  const SignupView({super.key});
  static const String routeName = 'signup';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SignupCubit(getIt<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(context, title: 'انشاء حساب جديد'),
        body: SignupBlocConsumer(),
      ),
    );
  }
}

class SignupBlocConsumer extends StatelessWidget {
  const SignupBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupCubit, SignupState>(
      listener: (context, state) {
        if (state is SignupSuccess) {
          Navigator.pop(context);
        } else if (state is SignupFailure) {
       ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(state.message)));
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is SignupLoading ? true : false,
          child: SignupViewBody(),
        );
      },
    );
  }
}


