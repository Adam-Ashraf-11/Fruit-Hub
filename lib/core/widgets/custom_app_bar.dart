import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

AppBar customAppBar(context, {required String title}) {
  return AppBar(
    leading: IconButton(
      color: Colors.white,
      onPressed: () => Navigator.pop(context),
      icon: Icon(Icons.arrow_back_ios),
    ),
    backgroundColor: AppColors.primaryColor,
    centerTitle: true,
    title: Text(
      title,
      style: AppTextStyles.bold19.copyWith(color: Colors.white),
    ),
  );
}
