import 'package:e_commerce_app/core/utils/app_text_styles.dart';
import 'package:e_commerce_app/feature/on_boarding/presentation/view/widgets/page_view_item.dart';
import 'package:flutter/material.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController});
  final PageController pageController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView(
        controller: pageController,
        children: [
          //! Page 1
          PageViewItem(
            bgImage: 'assets/image/svg/pageview_bg1.svg',
            image: 'assets/image/svg/pageview_image1.svg',
            subtitle:
                'اكتشف تجربة تسوق فريدة مع FruitHUB. استكشف مجموعتنا الواسعة من الفواكه الطازجة الممتازة واحصل على أفضل العروض والجودة العالية.',
            title: Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: 'مرحبًا بك في ',
                    style: AppTextStyles.bold23
                  ),
                  TextSpan(
                    text: 'Fruit',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF1B5E20),
                    ),
                  ),
                  TextSpan(
                    text: 'HUB',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF9A825),
                    ),
                  ),
                ],
              ),
              textDirection: TextDirection.rtl,
            ),
            bgColor: ColorFilter.mode(
              Color.fromARGB(255, 0, 255, 34),
              BlendMode.srcATop,
            ),
            isVisale:
                true,
          ),
          //! Page 2
          PageViewItem(
            bgImage: 'assets/image/svg/pageview_bg2.svg',
            image: 'assets/image/svg/pageview_image2.svg',
            title: Text(
              'ابحث وتسوق',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            subtitle:
                'نقدم لك أفضل الفواكه المختارة بعناية. اطلع على التفاصيل والصور والتقييمات لتتأكد من اختيار الفاكهة المثالية',
            bgColor: ColorFilter.mode(Colors.blueGrey, BlendMode.srcIn),
            isVisale:
               false,
          ),
        ],
      ),
    );
  }
}
