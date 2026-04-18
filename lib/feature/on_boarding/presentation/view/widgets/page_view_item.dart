import 'package:e_commerce_app/core/services/shared_prefrences.dart';
import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:e_commerce_app/feature/auth/presentation/view/login_view.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:svg_flutter/svg_flutter.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({
    super.key,
    required this.bgImage,
    required this.image,
    required this.subtitle,
    required this.title,
    required this.bgColor,
    required this.isVisale,
  });

  final String bgImage, image, subtitle;
  final Widget title;
  final ColorFilter bgColor;
  final bool isVisale;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.5,
            child: Stack(
              children: [
                Positioned.fill(
                  child: SvgPicture.asset(
                    bgImage,
                    colorFilter: bgColor,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: SizedBox(
                    height: 270,
                    width: 249.5,
                    child: SvgPicture.asset(image),
                  ),
                ),
                Visibility(
                  visible: isVisale,
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: TextButton(
                      onPressed: (){
                        Prefs.setBool(KIsBoardingViewSeen , true);
                        
                        Navigator.of(
                        context,
                      ).pushReplacementNamed(LoginView.routeName);},
                      child: Text("تخط", style: TextStyle(color: Colors.black)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Gap(64),
          title,
          Gap(24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 37),
            child: Text(subtitle, textAlign: TextAlign.center),
          ),
        ],
      ),
    );
  }
}
