import 'package:e_commerce_app/core/services/get_it_service.dart';
import 'package:e_commerce_app/core/widgets/custom_app_bar.dart';
import 'package:e_commerce_app/feature/auth/domain/repos/auth_repo.dart'
    show AuthRepo;
import 'package:e_commerce_app/feature/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/login_bloc_consumer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  static const routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(getIt.get<AuthRepo>()),
      child: Scaffold(
        appBar: customAppBar(context, title: 'تسجيل الدخول'),
        body: LoginBlocConsumer(),
      ),
    );
  }
}



