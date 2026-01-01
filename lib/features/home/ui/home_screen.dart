import 'package:e_commerce_app/features/home/Wiggets/home_app_bar.dart';
import 'package:e_commerce_app/features/home/Wiggets/home_categories_list.dart';
import 'package:e_commerce_app/features/home/Wiggets/product_item.dart';
import 'package:e_commerce_app/features/home/Wiggets/promo_banner.dart';
import 'package:e_commerce_app/features/home/Wiggets/recently_viewed_section.dart';
import 'package:e_commerce_app/core/widgets/section_header.dart';
import 'package:flutter/material.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
                    ),
                    ProductItem(
                      image: Assets.headphone,
                      name: 'Sony WH/1000XM5',
                      price: '4,999',
                    ),
                    ProductItem(
                      image: Assets.airpods,
                      name: 'FreeBuds Huawei',
                      price: '1,999',
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
