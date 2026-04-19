import 'package:e_commerce_app/core/helper_functions/snack_bar.dart';
import 'package:e_commerce_app/feature/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/login_view_body.dart';
import 'package:e_commerce_app/feature/home/presentation/view/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class LoginBlocConsumer extends StatelessWidget {
  const LoginBlocConsumer({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          buildSnackBar(context, ' login Successfully ');
          // Navigator.of(context).pushReplacementNamed(HomeView.routeName);
        } else if (state is LoginFailure) {
          buildSnackBar(context, state.message);
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading ? true : false,
          child: LoginViewBody(),
        );
      },
    );
  }
}
