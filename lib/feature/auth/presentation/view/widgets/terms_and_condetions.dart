import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsWidget extends StatefulWidget {
  const TermsAndConditionsWidget({super.key});

  @override
  State<TermsAndConditionsWidget> createState() =>
      _TermsAndConditionsWidgetState();
}

class _TermsAndConditionsWidgetState extends State<TermsAndConditionsWidget> {
  bool isAccepted = false; // حالة الـ Checkbox
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //! Checkbox Widget
        Checkbox(
          value: isAccepted,
          onChanged: (value) {
            setState(() {
              isAccepted = value!;
            });
          },
          shape: RoundedRectangleBorder(
            side: BorderSide(color: Colors.grey),
            borderRadius: BorderRadius.circular(4), // لجعل الحواف دائرية قليلاً
          ),
          activeColor: AppColors.lightPrimaryColor,
        ),
        //! Text Widget
        Expanded(
          child: Padding(
            padding: const EdgeInsets.only(top: 12), // موازنة النص مع المربع
            child: Text.rich(
              TextSpan(
                text: 'من خلال إنشاء حساب ، فإنك توافق على ',
                style: AppTextStyles.semiBold13.copyWith(
                  color: Color(0xFF9E9E9E),
                ),
                children: [
                  TextSpan(
                    text: 'الشروط والأحكام الخاصة بنا',
                    style: const TextStyle(
                      color: AppColors.lightPrimaryColor,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
