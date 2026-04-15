import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/view/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingViewBody extends StatelessWidget {
  const OnBoardingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingPageView(),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: Color(0XFFaeddab),
            activeColor: AppColors.primaryColor,
          ),
        ),
      Gap(29),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: hlPadding),
            child: CustomAppButton(title: 'ابدأ الان', onTPressed: (){}),
          
        ),
        Gap(43),
      ],
    );
  }
}
