import 'package:flutter/material.dart';
import 'package:lexi_leap/core/constants/assets.dart';
import 'package:lexi_leap/core/constants/colors.dart';
import 'package:lexi_leap/core/constants/sizes.dart';
import 'package:lexi_leap/core/constants/strings.dart';
import 'package:lexi_leap/ui/widgets/custom_button.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.paddingLarge),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                AppAssets.logo,
                height: 120,
                width: 120,
              ),
              const SizedBox(height: AppSizes.marginLarge),
              Text(
                AppStrings.loginTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: AppSizes.marginMedium),
              CustomButton(
                label: AppStrings.loginWithGoogle,
                onPressed: () {
                  // Handle Google login
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
