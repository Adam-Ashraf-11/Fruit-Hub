import 'package:e_commerce_app/core/utils/constants.dart';
import 'package:e_commerce_app/core/widgets/search_text_field.dart';
import 'package:e_commerce_app/feature/home/presentation/view/widgets/best_selling_gridview.dart';
import 'package:e_commerce_app/feature/home/presentation/view/widgets/best_selling_header.dart';
import 'package:e_commerce_app/feature/home/presentation/view/widgets/featured_list.dart';
import 'package:e_commerce_app/feature/home/presentation/view/widgets/home_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: hlPadding),
            child: Column(
              children: [
                Gap(16),
                HomeAppBar(),
                Gap(16),
                SearchTextField(),
                Gap(16),
                FeaturedList(),
                Gap(12),
                BestSellingHeader(),
                Gap(8),
              ],
            ),
          ),
        ),
      BestSellingGridview(),
      ],
    );
  }
}
