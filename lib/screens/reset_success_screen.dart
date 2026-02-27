import 'package:flutter/material.dart';
import '../core/app_colors.dart';

class ResetSuccessScreen extends StatelessWidget {
  const ResetSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              // Placeholder for the email sent illustration
              Icon(
                Icons.mark_email_read_outlined,
                size: 100,
                color: AppColors.primary,
              ),
              const SizedBox(height: 32),
              Text(
                'We Sent you an Email to reset your password.',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColors.textPrimary,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // Pop back to the initial sign in screen (or pop until)
                  Navigator.popUntil(
                    context,
                    ModalRoute.withName('/sign_in_email'),
                  );
                },
                child: const Text('Return to Login'),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
