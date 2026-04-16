import 'package:e_commerce_app/feature/auth/presentation/view/login_view.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:e_commerce_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoutes(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (_) => SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (_) => OnBoardingView());
       case LoginView.routeName:
      return MaterialPageRoute(builder: (_) => LoginView());

    default:
      return MaterialPageRoute(builder: (_) => Scaffold());
  }
}
