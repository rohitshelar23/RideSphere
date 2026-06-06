import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [

            // Profile Image
            CircleAvatar(
              radius: 55,
              backgroundColor:
                  AppColors.primary.withValues(alpha: 0.2),
              child: const Icon(
                Icons.person,
                size: 60,
                color: AppColors.primary,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Rohit Shelar",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "shelar.rohit2332@gmail.com",
              style: TextStyle(
                color: AppColors.textSecondary,
              ),
            ),

            const SizedBox(height: 40),

            _buildTile(
              Icons.location_on_outlined,
              "Saved Addresses",
            ),

            _buildTile(
              Icons.credit_card,
              "Payment Methods",
            ),

            _buildTile(
              Icons.history,
              "Ride History",
            ),

            _buildTile(
              Icons.support_agent,
              "Support",
            ),

            _buildTile(
              Icons.settings,
              "Settings",
            ),

            const SizedBox(height: 40),

           Container(
  width: double.infinity,
  padding: const EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: AppColors.card,
    borderRadius: BorderRadius.circular(24),
  ),
  child: const Column(
    children: [
      Text(
        "Membership Status",
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w700,
        ),
      ),

      SizedBox(height: 10),

      Text(
        "Executive Member",
        style: TextStyle(
          color: AppColors.primary,
          fontSize: 22,
          fontWeight: FontWeight.bold,
        ),
      ),

      SizedBox(height: 10),

      Text(
        "Enjoy priority booking, premium vehicles, and dedicated chauffeur services.",
        textAlign: TextAlign.center,
      ),
    ],
  ),
),
          ],
        ),
      ),
    );
  }

  Widget _buildTile(
    IconData icon,
    String title,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
      ),
      child: ListTile(
        leading: Icon(
          icon,
          color: AppColors.primary,
        ),
        title: Text(title),
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      ),
    );
  }
}