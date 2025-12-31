import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';

class HomeCategoriesList extends StatelessWidget {
  const HomeCategoriesList({super.key});

  final List<String> categories = const [
    'Technology',
    'Fashion',
    'Sports',
    'Supermarket',
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h(context),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16.w(context)),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(right: 10.w(context)),
            padding: EdgeInsets.symmetric(horizontal: 20.w(context)),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25.r(context)),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Center(
              child: Text(
                categories[index],
                style: TextStyle(
                  fontSize: 14.r(context),
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
