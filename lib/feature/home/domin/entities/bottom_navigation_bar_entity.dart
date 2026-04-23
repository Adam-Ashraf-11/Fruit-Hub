import 'package:e_commerce_app/core/utils/app_images.dart';

class BottomNavigationBarEntity {
  final String activeIcon, inActiveIcon;
  final String title;
  BottomNavigationBarEntity({
    required this.activeIcon,
    required this.inActiveIcon,
    required this.title,
  });
}

List<BottomNavigationBarEntity> get bottomNavigationBarItems => [
  BottomNavigationBarEntity(
    activeIcon: Assets.imageNavigationAppbarBoldHome,
    inActiveIcon: Assets.imageNavigationAppbarOutlineHome,
    title: 'الرئيسية',
  ),
  BottomNavigationBarEntity(
    activeIcon: Assets.imageNavigationAppbarBoldElement3,
    inActiveIcon: Assets.imageNavigationAppbarOutlineProduct,
    title: 'المنتجات',
  ),
  BottomNavigationBarEntity(
    activeIcon: Assets.imageNavigationAppbarBoldShoppingCart,
    inActiveIcon: Assets.imageNavigationAppbarOutlineShoppingCart,
    title: 'سلة التسوق',
  ),
  BottomNavigationBarEntity(
    activeIcon: Assets.imageNavigationAppbarBoldUser,
    inActiveIcon: Assets.imageNavigationAppbarOutlineUser,
    title: 'حسابي',
  ),
];
