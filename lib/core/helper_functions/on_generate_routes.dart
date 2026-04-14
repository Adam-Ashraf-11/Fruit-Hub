import 'package:e_commerce_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

Route <dynamic> onGenerateRoutes(RouteSettings settings) {

    switch(settings.name) {
      case SplashView.routeName:
        return MaterialPageRoute(builder: (_) => SplashView());
      default:
        return MaterialPageRoute(builder: (_) => Scaffold());
    }

}