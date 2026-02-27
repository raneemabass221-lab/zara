import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Navigate to next screen after delay
    Future.delayed(const Duration(seconds: 2), () {
      if (!context.mounted) return;
      Navigator.pushReplacementNamed(context, '/sign_in_email');
    });

    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Text(
          'ZARA',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
          ),
        ),
      ),
    );
  }
}
