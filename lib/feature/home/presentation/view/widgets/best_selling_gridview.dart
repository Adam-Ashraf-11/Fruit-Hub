import 'package:e_commerce_app/core/widgets/product_item.dart';
import 'package:flutter/material.dart';

class BestSellingGridview extends StatelessWidget {
  const BestSellingGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 8,
        crossAxisSpacing: 16,
        childAspectRatio: 163 / 214, //,
      ),
      itemBuilder: (context, index) => ProductItem(),
    );
  }
}
