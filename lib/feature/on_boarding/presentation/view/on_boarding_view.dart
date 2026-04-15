import 'package:e_commerce_app/feature/on_boarding/presentation/view/on_boarding_view_body.dart';
import 'package:flutter/material.dart';

class OnBoardingView extends StatelessWidget {
  const OnBoardingView({super.key});
  static const  routeName = 'onboarding';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: OnBoardingViewBody()),
    );
  }
}