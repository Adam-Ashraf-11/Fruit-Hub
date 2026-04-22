import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('الأكثر مبيعًا' , style: AppTextStyles.bold16,),
        Spacer(),
        Text('المزيد' , style: AppTextStyles.semiBold13,)
      ],
    );
  }
}