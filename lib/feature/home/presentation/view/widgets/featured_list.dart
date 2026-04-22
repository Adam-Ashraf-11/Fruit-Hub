import 'package:e_commerce_app/feature/home/presentation/view/widgets/featured_iterm.dart';
import 'package:flutter/material.dart';

class FeaturedList extends StatelessWidget {
  const FeaturedList({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(4, (index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: FeaturedIterm(),
          );
        }),
      ),
    );
  }
}
