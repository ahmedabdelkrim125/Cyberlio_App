import 'package:flutter/material.dart';
import 'package:e_commerce_app/core/helper/responsive_extensions.dart';

class CustomButton extends StatefulWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isLoading;
  final bool isOutlined;
  final Color? backgroundColor;
  final Color? textColor;
  final double? height;
  final double? width;
  final Widget? icon;
  final double? fontSize;
  final FontWeight? fontWeight;

  const CustomButton({
    super.key,
    required this.text,
    this.onPressed,
    this.isLoading = false,
    this.isOutlined = false,
    this.backgroundColor,
    this.textColor,
    this.height,
    this.width,
    this.icon,
    this.fontSize,
    this.fontWeight,
  });

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _scaleAnimation;
  bool _isPressed = false;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: const Duration(milliseconds: 150),
      vsync: this,
    );
    _scaleAnimation = Tween<double>(begin: 1.0, end: 0.95).animate(
      CurvedAnimation(parent: _animationController, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool isDisabled = widget.onPressed == null || widget.isLoading;

    return AnimatedBuilder(
      animation: _scaleAnimation,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: child,
        );
      },
      child: GestureDetector(
        onTapDown: isDisabled
            ? null
            : (_) {
                setState(() => _isPressed = true);
                _animationController.forward();
              },
        onTapUp: isDisabled
            ? null
            : (_) {
                setState(() => _isPressed = false);
                _animationController.reverse();
              },
        onTapCancel: isDisabled
            ? null
            : () {
                setState(() => _isPressed = false);
                _animationController.reverse();
              },
        child: Container(
          height: widget.height ?? 56.h(context),
          width: widget.width ?? double.infinity,
          decoration: BoxDecoration(
            gradient: widget.isOutlined || isDisabled
                ? null
                : LinearGradient(
                    colors: [
                      widget.backgroundColor ?? Colors.orange,
                      widget.backgroundColor?.withOpacity(0.8) ??
                          Colors.deepOrange,
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
            color: widget.isOutlined
                ? Colors.transparent
                : (isDisabled ? Colors.grey.shade300 : null),
            borderRadius: BorderRadius.circular(16.r(context)),
            border: widget.isOutlined
                ? Border.all(
                    color: isDisabled
                        ? Colors.grey.shade300
                        : (widget.backgroundColor ?? Colors.orange),
                    width: 2,
                  )
                : null,
            boxShadow: isDisabled || widget.isOutlined
                ? []
                : [
                    BoxShadow(
                      color: (widget.backgroundColor ?? Colors.orange)
                          .withOpacity(0.4),
                      blurRadius: _isPressed ? 8 : 16,
                      offset: Offset(0, _isPressed ? 2 : 6),
                    ),
                  ],
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: isDisabled ? null : widget.onPressed,
              borderRadius: BorderRadius.circular(16.r(context)),
              child: Center(
                child: widget.isLoading
                    ? SizedBox(
                        height: 24,
                        width: 24,
                        child: CircularProgressIndicator(
                          strokeWidth: 2.5,
                          valueColor: AlwaysStoppedAnimation<Color>(
                            widget.isOutlined
                                ? (widget.backgroundColor ?? Colors.orange)
                                : Colors.white,
                          ),
                        ),
                      )
                    : Row(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          if (widget.icon != null) ...[
                            widget.icon!,
                            SizedBox(width: 8.w(context)),
                          ],
                          Text(
                            widget.text,
                            style: TextStyle(
                              fontSize: widget.fontSize ?? 16,
                              fontWeight: widget.fontWeight ?? FontWeight.w600,
                              color: widget.isOutlined
                                  ? (isDisabled
                                      ? Colors.grey.shade400
                                      : (widget.textColor ??
                                          widget.backgroundColor ??
                                          Colors.orange))
                                  : (widget.textColor ?? Colors.white),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ],
                      ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}