import 'package:flutter/material.dart';
import 'package:lexi_leap/core/constants/assets.dart';
import 'package:lexi_leap/core/constants/colors.dart';
import 'package:lexi_leap/core/constants/sizes.dart';
import 'package:lexi_leap/core/constants/strings.dart';
import 'package:lexi_leap/core/services/auth_service.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthService _authService = AuthService();
  bool _isLoading = false;

  void _handleGoogleSignIn() async {
    setState(() {
      _isLoading = true;
    });

    final user = await _authService.signInWithGoogle();

    setState(() {
      _isLoading = false;
    });

    if (user != null) {
      // Điều hướng sang màn hình chính sau khi đăng nhập thành công
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      // Xử lý khi đăng nhập thất bại
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Đăng nhập thất bại! Vui lòng thử lại.')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      body: Center(
        child: SingleChildScrollView(
          padding: EdgeInsets.all(AppSizes.paddingLarge),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Logo Ứng Dụng
              Image.asset(
                AppAssets.logo,
                height: 120,
                width: 120,
              ),
              SizedBox(height: AppSizes.marginLarge),

              // Tiêu đề Đăng Nhập
              Text(
                AppStrings.loginTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              SizedBox(height: AppSizes.marginMedium),

              // Nút Đăng Nhập với Google
              _isLoading
                  ? CircularProgressIndicator()
                  : ElevatedButton(
                      onPressed: _handleGoogleSignIn,
                      child: const Text('Sign In'),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}
