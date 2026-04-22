import 'package:e_commerce_app/core/utils/app_colors.dart';
import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:svg_flutter/svg_flutter.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFf4f5f7),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Stack(
        children: [
          IconButton(onPressed: () {}, icon: Icon(Icons.favorite_outline)),
          Positioned.fill(
            child: Column(
              children: [
                SizedBox(
                  width: 160,
                  child: SvgPicture.asset(Assets.imageSvgPageviewImage2),
                ),
                
                ListTile(
                  title: Text('فراولة', style: AppTextStyles.bold13),
                  subtitle: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '30',
                          style: AppTextStyles.bold19.copyWith(
                            color: AppColors.secondryAppColor,
                          ),
                        ),
                        TextSpan(
                          text: ' جنية ',
                          style: AppTextStyles.bold19.copyWith(
                            color: AppColors.secondryAppColor,
                          ),
                        ),
                        TextSpan(
                          text: '/ الكيلو',
                          style: AppTextStyles.bold16.copyWith(
                            color: AppColors.secondryLightAppColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
