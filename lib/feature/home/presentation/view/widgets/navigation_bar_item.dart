import 'package:e_commerce_app/feature/home/domin/entities/bottom_navigation_bar_entity.dart' show BottomNavigationBarEntity;
import 'package:e_commerce_app/feature/home/presentation/view/widgets/active_icon.dart';
import 'package:e_commerce_app/feature/home/presentation/view/widgets/in_active_icon.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem({super.key, required this.isSelected, required this.entity});
  final bool isSelected;
  final BottomNavigationBarEntity entity;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ?  ActiveIcon(name: entity.title, icon: entity.activeIcon,)
        :  InActiveIcon(icon: entity.inActiveIcon);
  }
}
