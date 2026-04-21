import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      trailing: Container(
        decoration: BoxDecoration(
        color: Color(0xffeff9ee),
      borderRadius: BorderRadius.circular(40)
        ),
        padding: EdgeInsets.all(16),
        child: Image.asset(Assets.imageSvgNotification) ,
      ),
      subtitle: Text('أحمد مصطفي' , style: AppTextStyles.bold16,),
      title: Text(
        'صباح الخير !..',
        style: AppTextStyles.bold16.copyWith(color: Colors.grey),
      ),
      leading: Image.asset(Assets.imageSvgImageicon),
    );
  }
}
