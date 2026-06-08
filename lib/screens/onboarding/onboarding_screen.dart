import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/primary_button.dart';
import '../auth/login_screen.dart';
import '../../core/utils/page_transition.dart';


class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 60,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: AppColors.card,
    borderRadius: BorderRadius.circular(24),
    border: Border.all(
      color: AppColors.primary.withValues(
        alpha: 0.15,
      ),
    ),
    boxShadow: [
      BoxShadow(
        color: AppColors.primary.withValues(
          alpha: 0.08,
        ),
        blurRadius: 30,
        offset: const Offset(0, 10),
      ),
    ],
  ),
  child: Column(
    children: [
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 14,
          vertical: 8,
        ),
        decoration: BoxDecoration(
          color: AppColors.primary,
          borderRadius: BorderRadius.circular(20),
        ),
        child: const Text(
          "FLUTTER INTERNSHIP PROJECT",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 12,
          ),
        ),
      ),

      const SizedBox(height: 16),

      const Text(
        "RideSphere",
        style: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.w800,
        ),
      ),

      const SizedBox(height: 8),

      Text(
        "Built by Rohit Shelar for the LimoSphere Flutter Internship Application.",
        style: TextStyle(
          color: AppColors.primary,
          fontWeight: FontWeight.w600,
        ),
      ),

      const SizedBox(height: 16),

      Text(
        "RideSphere is my first Flutter project. I created it after exploring the LimoSphere platform and trying to understand how luxury transportation services work from both the customer and business perspective.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.textSecondary,
          height: 1.5,
        ),
      ),

      const SizedBox(height: 12),

      Text(
        "Since I am still learning Flutter, I decided to build this mock application to showcase my problem-solving approach, UI/UX thinking, and ability to turn ideas into a working product. While not every feature is fully functional, each screen was designed and developed to reflect my understanding of the platform and the user experience behind it.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.textSecondary,
          height: 1.5,
        ),
      ),

      const SizedBox(height: 12),

      Text(
        "This project represents my curiosity, willingness to learn, and genuine interest in becoming part of the LimoSphere team.",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: AppColors.textSecondary,
          height: 1.5,
        ),
      ),
    ],
  ),
),

const Spacer(),

          
Text(
  'Luxury Rides,\nSeamless Experience.',
  style: const TextStyle(
    fontSize: 42,
    fontWeight: FontWeight.w800,
    height: 1.1,
  ),
),

            const SizedBox(height: 15),

            const Text(
              'Executive chauffeur booking experience inspired by premium transportation platforms.',
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
                height: 1.7,
              ),
            ),

const SizedBox(height: 10),

PrimaryButton(
  text: 'Get Started',
  onTap: () {
    Navigator.push(
      context,
      FadePageRoute(
        page: const LoginScreen(),
      ),
    );
  },
),
          
          ],
        ),
      ),
    );
  }
}