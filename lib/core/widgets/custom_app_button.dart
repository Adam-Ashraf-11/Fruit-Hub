import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';

class CustomAppButton extends StatelessWidget {
  const CustomAppButton({
    super.key,
    required this.title,
    required this.onTPressed,
  });

  final String title;
  final VoidCallback onTPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 54,
      width: double.infinity,
      child: TextButton(
        onPressed: onTPressed,
        style: TextButton.styleFrom(
          overlayColor:  Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}
