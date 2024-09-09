import 'package:flutter/material.dart';
import 'package:lexi_leap/core/constants/colors.dart';
import 'package:lexi_leap/core/constants/sizes.dart';
import 'package:lexi_leap/core/constants/strings.dart';
import 'package:lexi_leap/ui/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.homeTitle),
        backgroundColor: AppColors.primaryColor,
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chào mừng đến với Lexi Leap!',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Danh sách từ vựng',
              onPressed: () {
                // Navigate to vocabulary list
              },
            ),
            const SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Flashcards',
              onPressed: () {
                // Navigate to flashcards
              },
            ),
            const SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Quiz',
              onPressed: () {
                // Navigate to quiz
              },
            ),
            const SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Tiến độ học tập',
              onPressed: () {
                // Navigate to progress screen
              },
            ),
          ],
        ),
      ),
    );
  }
}
