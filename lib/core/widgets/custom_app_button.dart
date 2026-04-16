import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.title,
    required this.onTPressed,
    this.radius,
  });

  final String title;
  final VoidCallback onTPressed;
  final BorderRadius? radius;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        onPressed: onTPressed,
        style: TextButton.styleFrom(
          overlayColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: radius ?? BorderRadius.circular(16),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(title, style: AppTextStyles.bold16.copyWith(color: Colors.white)),
      ),
    );
  }
}
