import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class SignInEmailScreen extends StatelessWidget {
  const SignInEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(), // transparent by theme
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
              Text(
                'Sign in',
                style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const SizedBox(height: 32),
              TextField(
                decoration: const InputDecoration(hintText: 'Email Address'),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/sign_in_password');
                },
                child: const Text('Continue'),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  const Text(
                    'Don\'t have an Account ? ',
                    style: TextStyle(color: AppColors.textPrimary),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/create_account');
                    },
                    child: const Text(
                      'Create One',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: AppColors.textPrimary,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 48),
              _buildSocialButton('Continue With Apple', Icons.apple),
              const SizedBox(height: 16),
              // Using a simple icon for Google just as placeholder
              _buildSocialButton('Continue With Google', Icons.g_mobiledata),
              const SizedBox(height: 16),
              _buildSocialButton('Continue With Facebook', Icons.facebook),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialButton(String text, IconData icon) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.inputBackground,
        foregroundColor: AppColors.textPrimary,
        elevation: 0,
      ),
      onPressed: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon, size: 24), const SizedBox(width: 12), Text(text)],
      ),
    );
  }
}
