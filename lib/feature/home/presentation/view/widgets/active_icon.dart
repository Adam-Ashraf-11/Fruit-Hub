import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

class ActiveIcon extends StatelessWidget {
  const ActiveIcon({Key? key, required this.name, required this.icon});

  final String name;
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child: Center(
        child: Container(
          padding: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            color: Color(0xffeeeeee),
            borderRadius: BorderRadius.circular(30),
          ),

          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Center(child: SvgPicture.asset(icon)),
              ),
              Gap(4),
              Text(
                name,
                style: AppTextStyles.semiBold11.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
