import 'package:flutter/material.dart';
import 'core/theme.dart';
import 'screens/splash_screen.dart';
import 'screens/sign_in_email_screen.dart';
import 'screens/sign_in_password_screen.dart';
import 'screens/create_account_screen.dart';
import 'screens/forgot_password_screen.dart';
import 'screens/reset_success_screen.dart';
import 'screens/onboarding_screen.dart';

void main() {
  runApp(const ZaraCloneApp());
}

class ZaraCloneApp extends StatelessWidget {
  const ZaraCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ZARA Clone',
      theme: AppTheme.lightTheme,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign_in_email': (context) => const SignInEmailScreen(),
        '/sign_in_password': (context) => const SignInPasswordScreen(),
        '/create_account': (context) => const CreateAccountScreen(),
        '/forgot_password': (context) => const ForgotPasswordScreen(),
        '/reset_success': (context) => const ResetSuccessScreen(),
        '/onboarding': (context) => const OnboardingScreen(),
      },
    );
  }
}
