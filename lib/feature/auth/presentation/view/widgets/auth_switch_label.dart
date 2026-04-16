import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AuthSwitchLabel extends StatelessWidget {
  final String questionText;
  final String actionText;
  final VoidCallback? onTap;

  const AuthSwitchLabel({
    required this.questionText,
    required this.actionText,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        text: questionText,
        style: AppTextStyles.semiBold16.copyWith(color: Color(0xFF9E9E9E)),
        children: <TextSpan>[
          TextSpan(
            recognizer: TapGestureRecognizer()..onTap = onTap,
            text: actionText,
            style: AppTextStyles.semiBold16.copyWith(
              color: AppColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }
}
