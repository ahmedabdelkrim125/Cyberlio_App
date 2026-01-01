import 'package:e_commerce_app/features/checkout%20screen/widgets/Shipping%20Method%20Switcher';
import 'package:e_commerce_app/features/checkout%20screen/widgets/checkout_product_info.dart';
import 'package:e_commerce_app/features/checkout%20screen/widgets/finalize_purchase_button.dart';
import 'package:e_commerce_app/features/checkout%20screen/widgets/order_summary.dart';
import 'package:e_commerce_app/features/checkout%20screen/widgets/payment_methods_slider.dart';
import 'package:e_commerce_app/features/checkout%20screen/widgets/quick_pay_options.dart';
import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';
import '../../../../core/helper/spacing.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(context),
      body: SingleChildScrollView(
        padding: context.responsivePadding(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CheckoutProductInfo(),
            verticalSpace(context, height: 25),

            _buildSectionTitle(context, 'Shipping method'),
            verticalSpace(context, height: 12),
            const ShippingMethodSwitcher(),

            verticalSpace(context, height: 25),
            _buildSectionTitle(context, 'Select your payment method'),
            verticalSpace(context, height: 15),
            const PaymentMethodsSlider(),

            verticalSpace(context, height: 25),
            _buildSectionTitle(context, '+ Add new', isBold: true),
            verticalSpace(context, height: 15),
            const QuickPayOptions(),

            verticalSpace(context, height: 35),
            const OrderSummary(),

            verticalSpace(context, height: 30),
            const FinalizePurchaseButton(),
            verticalSpace(context, height: 20),
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios, color: Colors.black, size: 20),
        onPressed: () => Navigator.pop(context),
      ),
      titleSpacing: 0,
      title: Text(
        'Checkout',
        style: TextStyle(
          color: Colors.black,
          fontSize: 20.r(context),
          fontWeight: FontWeight.bold,
          fontFamily: 'PPMori',
        ),
      ),
    );
  }

  Widget _buildSectionTitle(
    BuildContext context,
    String title, {
    bool isBold = false,
  }) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 16.r(context),
        fontWeight: isBold ? FontWeight.bold : FontWeight.w500,
      ),
    );
  }
}
