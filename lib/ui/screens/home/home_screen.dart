import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:lexi_leap/core/constants/colors.dart';
import 'package:lexi_leap/core/constants/sizes.dart';
import 'package:lexi_leap/core/constants/strings.dart';
import 'package:lexi_leap/core/services/auth_service.dart';
import 'package:lexi_leap/ui/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  final AuthService _authService = AuthService();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  void _handleSignOut(BuildContext context) async {
    await _authService.signOut();
    Navigator.pushReplacementNamed(context, '/');
  }

  @override
  Widget build(BuildContext context) {
    User? user = _auth.currentUser;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.homeTitle),
        backgroundColor: AppColors.primaryColor,
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _handleSignOut(context),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(AppSizes.paddingMedium),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Chào mừng, ${user?.displayName ?? 'Người dùng'}!',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Danh sách từ vựng',
              onPressed: () {
                // Điều hướng tới danh sách từ vựng
              },
            ),
            SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Flashcards',
              onPressed: () {
                // Điều hướng tới flashcards
              },
            ),
            SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Quiz',
              onPressed: () {
                // Điều hướng tới quiz
              },
            ),
            SizedBox(height: AppSizes.marginMedium),
            CustomButton(
              label: 'Tiến độ học tập',
              onPressed: () {
                // Điều hướng tới tiến độ học tập
              },
            ),
          ],
        ),
      ),
    );
  }
}
