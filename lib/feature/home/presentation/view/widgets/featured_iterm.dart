import 'package:e_commerce_app/core/utils/app_images.dart';
import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/feature/home/presentation/view/widgets/featured_item_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as svg;
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg.dart';

class FeaturedIterm extends StatelessWidget {
  const FeaturedIterm({super.key});

  @override
  Widget build(BuildContext context) {
    var itemSize = MediaQuery.sizeOf(context).width - 32;
    return ClipRRect(
      borderRadius: BorderRadiusGeometry.circular(4),
      child: SizedBox(
        width: itemSize,
        child: AspectRatio(
          aspectRatio: 342/158,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                bottom: 0,
                top: 0,
                right: itemSize * 0.4,
                child: SvgPicture.asset(Assets.imageSvgPageviewImage2 , fit: BoxFit.fill,) ),
              Container(
                width: itemSize * 0.5 ,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: svg.Svg(Assets.imageSvgShape),
                    fit: BoxFit.fill,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(right:33 ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Gap(25),
                      Text(
                        'عروض العيد',
                        style: AppTextStyles.semiBold13.copyWith(
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      Spacer(),
                      Gap(11),
                      Text('خصم 25%', style: AppTextStyles.bold23),
                      Spacer(),
                      FeaturedItemButton(onPressed: () {}),
                      Gap(29)
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
