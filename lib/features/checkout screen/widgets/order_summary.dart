import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSummaryRow(context, 'Subtotal (2 items)', '\$ 4.999'),
        verticalSpace(context, height: 8),
        _buildSummaryRow(context, 'Shipping cost', 'Free'),
        const Divider(height: 30),
        _buildSummaryRow(context, 'Total', '\$ 4.999', isTotal: true),
      ],
    );
  }

  Widget _buildSummaryRow(
    BuildContext context,
    String title,
    String price, {
    bool isTotal = false,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey,
            fontSize: isTotal ? 16.r(context) : 14.r(context),
          ),
        ),
        Text(
          price,
          style: TextStyle(
            fontWeight: isTotal ? FontWeight.bold : FontWeight.normal,
            fontSize: isTotal ? 18.r(context) : 14.r(context),
          ),
        ),
      ],
    );
  }
}
