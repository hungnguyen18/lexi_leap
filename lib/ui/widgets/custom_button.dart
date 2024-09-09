import 'package:flutter/material.dart';
import 'package:lexi_leap/core/constants/colors.dart';
import 'package:lexi_leap/core/constants/sizes.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? color;
  final Color? textColor;
  final double? fontSize;
  final double? height;
  final double? width;

  CustomButton({
    required this.label,
    required this.onPressed,
    this.color,
    this.textColor,
    this.fontSize,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? AppSizes.buttonHeight,
      width: width ?? double.infinity, // Full width by default
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.borderRadius),
          ),
          padding: const EdgeInsets.symmetric(
              vertical: AppSizes.buttonPaddingVertical),
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: fontSize ?? AppSizes.buttonFontSize,
          ),
        ),
      ),
    );
  }
}
