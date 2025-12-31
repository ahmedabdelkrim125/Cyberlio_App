import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16, top: 10),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 50.h(context),
              decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(25.r(context)),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search products',
                  hintStyle: const TextStyle(color: Colors.grey, fontSize: 14),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 12.h(context)),
                ),
              ),
            ),
          ),
          horizontalSpace(context, width: 12),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.grey[100],
                child: const Icon(
                  Icons.notifications_none,
                  color: Colors.black,
                ),
              ),
              Positioned(
                right: 2,
                top: 2,
                child: CircleAvatar(
                  radius: 5.r(context),
                  backgroundColor: Colors.orange,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
