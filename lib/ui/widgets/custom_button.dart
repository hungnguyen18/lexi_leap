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
  final IconData? icon;

  CustomButton({
    required this.label,
    required this.onPressed,
    this.color,
    this.textColor,
    this.fontSize,
    this.height,
    this.width,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height ?? AppSizes.buttonHeight,
      width: width ?? double.infinity, // Full width by default
      child: ElevatedButton.icon(
        icon: icon != null
            ? Icon(
                icon,
                color: textColor ?? Colors.white,
              )
            : SizedBox(),
        label: Text(
          label,
          style: TextStyle(
            color: textColor ?? Colors.white,
            fontSize: fontSize ?? AppSizes.buttonFontSize,
          ),
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppSizes.borderRadius),
          ),
          padding:
              EdgeInsets.symmetric(vertical: AppSizes.buttonPaddingVertical),
        ),
        onPressed: onPressed,
      ),
    );
  }
}
