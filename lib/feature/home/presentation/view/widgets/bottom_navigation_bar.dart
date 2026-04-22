import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Colors.black45,
            blurRadius: 25,
            offset: Offset(0, -2),
            spreadRadius: 0,
          ),
        ],
      ),
      child: SizedBox(
        height: 80,
        child: InActiveIcon(icon: Assets.imageNavigationAppbarOutlineHome)),
    );
  }
}

class InActiveIcon extends StatelessWidget {
  const InActiveIcon({super.key, required this.icon});
 final String icon;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon);
  }
}

class ActiveIcon extends StatelessWidget {
  const ActiveIcon({super.key, required this.icon});
 final String icon;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(icon);
  }
}