import 'package:dots_indicator/dots_indicator.dart';
import 'package:e_commerce_app/constants.dart';
import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/widgets/custom_app_button.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/view/widgets/on_boarding_page_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();
    pageController.addListener(() {
      currentPage = pageController.page!.round();
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        OnBoardingPageView(pageController: pageController),
        DotsIndicator(
          dotsCount: 2,
          decorator: DotsDecorator(
            color: currentPage == 1
                ? AppColors.primaryColor
                : Color(0XFFaeddab),
            activeColor: AppColors.primaryColor,
          ),
        ),
        Gap(29),
        Visibility(
          visible: currentPage == 1 ? true : false,
          maintainAnimation: true,
          maintainSize: true,
          maintainState: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: hlPadding),
            child: CustomAppButton(title: 'ابدأ الان', onTPressed: () {}),
          ),
        ),
        Gap(43),
      ],
    );
  }
}
