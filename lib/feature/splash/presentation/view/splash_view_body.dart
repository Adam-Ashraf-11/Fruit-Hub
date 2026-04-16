import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/services/shared_prefrences.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/login_view.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/view/on_boarding_view.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    excuteNavigation();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [SvgPicture.asset(Assets.imageSvgPlant)],
          ),
          Image.asset("assets/image/icons/FruitHub.png"),
          SvgPicture.asset(
            width: 400,
            Assets.imageSvgCircleSplashBottom,
            fit: BoxFit.fill,
            colorFilter: ColorFilter.mode(
              const Color.fromARGB(255, 9, 134, 5),
              BlendMode.srcIn,
            ),
          ),
        ],
      ),
    );
  }

  //! Navigation Method
  void excuteNavigation() {
    bool isonBoarding = Prefs.getBool(KIsBoardingViewSeen);
    Future.delayed(const Duration(seconds: 4), () {
      if (isonBoarding) {
        Navigator.pushReplacementNamed(context, LoginView.routeName);
      } else {
        Navigator.pushReplacementNamed(context, OnBoardingView.routeName);
      }
    });
  }
}
