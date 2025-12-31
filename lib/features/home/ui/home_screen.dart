import 'package:e_commerce_app/features/home/ui/widgets/home_app_bar.dart';
import 'widgets/home_categories_list.dart';
import 'widgets/product_item.dart';
import 'widgets/promo_banner.dart';
import 'widgets/recently_viewed_section.dart';
import 'widgets/section_header.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              const PromoBanner(),
              const HomeCategoriesList(),

              const SectionHeader(title: 'Hot sales'),
              SizedBox(
                height: 220.h(context),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
                  children: [
                    ProductItem(
                      image: Assets.laptop,
                      name: 'Macbook Air M1',
                      price: '29,999',
                      onTap: () {},
                    ),
                    ProductItem(
                      image: Assets.headphone,
                      name: 'Sony WH/1000XM5',
                      price: '4,999',
                      onTap: () {},
                    ),
                    ProductItem(
                      image: Assets.airpods,
                      name: 'FreeBuds Huawei',
                      price: '1,999',
                      onTap: () {},
                    ),
                  ],
                ),
              ),

              const SectionHeader(title: 'Recently viewed'),
              const RecentlyViewedSection(),

              verticalSpace(context, height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
