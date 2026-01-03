import 'package:flutter/material.dart';
import '../../../../core/helper/responsive_extensions.dart';

class PaymentCard extends StatelessWidget {
  final List<Color> gradient;
  final String cardNumber;
  final bool isSelected;

  const PaymentCard({
    super.key,
    required this.gradient,
    required this.cardNumber,
    this.isSelected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220.w(context),
      padding: EdgeInsets.all(20.r(context)),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradient,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20.r(context)),
      ),
      child: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'VISA',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              Text(
                '**** **** **** $cardNumber',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 2,
                ),
              ),
              const Text(
                '07/25',
                style: TextStyle(color: Colors.white70, fontSize: 12),
              ),
            ],
          ),
          if (isSelected)
            const Positioned(
              top: 0,
              right: 0,
              child: Icon(Icons.check_circle, color: Colors.white),
            ),
        ],
      ),
    );
  }
}
