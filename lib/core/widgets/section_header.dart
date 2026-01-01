import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';

class SectionHeader extends StatelessWidget {
  final String title;
  const SectionHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: context.responsivePadding(horizontal: 16, vertical: 15),
      child: Text(
        title,
        style: TextStyle(
          fontSize: 18.r(context),
          fontWeight: FontWeight.bold,
          color: Colors.black,
          fontFamily: 'PPMori',
        ),
      ),
    );
  }
}
