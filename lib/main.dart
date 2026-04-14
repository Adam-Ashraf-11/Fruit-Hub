import 'package:e_commerce_app/core/helper_functions/on_generate_routes.dart';
import 'package:e_commerce_app/feature/splash/presentation/view/splash_view.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(FruitHub());
}


class FruitHub extends StatelessWidget {
  const FruitHub({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     onGenerateRoute: onGenerateRoutes,
     initialRoute: SplashView.routeName,
    );
  }
}