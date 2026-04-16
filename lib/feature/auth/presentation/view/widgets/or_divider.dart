import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //! divider one
        const Expanded(child: Divider(thickness: 1, color: Color(0xFFE0E0E0))),
        //! text
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text('أو', style: AppTextStyles.semiBold16),
        ),

        //! divider tow
        const Expanded(child: Divider(thickness: 1, color: Color(0xFFE0E0E0))),
      ],
    );
  }
}
