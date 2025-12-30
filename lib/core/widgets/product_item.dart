import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';

class ProductItem extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductItem({
    super.key,
    required this.image,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w(context),
      margin: EdgeInsets.only(right: 12.w(context)),
      padding: context.responsivePadding(all: 12),
      decoration: BoxDecoration(
        color: Colors.white, // تغيير الخلفية للأبيض
        borderRadius: BorderRadius.circular(20.r(context)),
        border: Border.all(
          color: Colors.grey.shade100,
        ), // إطار خفيف جداً بدل الجراي
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Center(child: Image.asset(image))),
          verticalSpace(context, height: 8),
          Text(
            name,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            '\$ $price',
            style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          verticalSpace(context, height: 4),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 6.w(context),
              vertical: 2.h(context),
            ),
            decoration: BoxDecoration(
              color: Colors.grey[100], // خلفية الـ Label بقت جراي فاتح
              borderRadius: BorderRadius.circular(4.r(context)),
            ),
            child: const Text(
              'Free shipping',
              style: TextStyle(
                color: Color(0xFF4CAF50),
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
