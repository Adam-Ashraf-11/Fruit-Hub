import 'package:e_commerce_app/feature/home/presentation/view/home_view_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SafeArea(child: HomeViewBody()),
    );
  }
}