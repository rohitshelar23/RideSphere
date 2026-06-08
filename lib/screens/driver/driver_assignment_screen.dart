import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/primary_button.dart';
import '../tracking/tracking_screen.dart';

class DriverAssignmentScreen extends StatelessWidget {
  const DriverAssignmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SizedBox(height: 10),

            const Icon(
              Icons.check_circle,
              color: AppColors.primary,
              size: 80,
            ),

            const SizedBox(height: 20),

            const Text(
              "Driver Assigned",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 40),

            CircleAvatar(
              radius: 55,
              backgroundColor: AppColors.card,
              child: Icon(
                Icons.person,
                size: 60,
                color: AppColors.primary,
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Pramod Kumar",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "⭐ 4.9 Rating",
              style: TextStyle(
                color: AppColors.textSecondary,
              ),
            ),

            const SizedBox(height: 30),

            Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(24),
              ),
              child: const Column(
                children: [
                  ListTile(
                    leading: Icon(
                      Icons.directions_car,
                      color: AppColors.primary,
                    ),
                    title: Text("BMW i5"),
                  ),

                  Divider(),

                  ListTile(
                    leading: Icon(
                      Icons.pin,
                      color: AppColors.primary,
                    ),
                    title: Text("MH 01 AB 1234"),
                  ),

                  Divider(),

                  ListTile(
                    leading: Icon(
                      Icons.access_time,
                      color: AppColors.primary,
                    ),
                    title: Text("Arriving in 8 min"),
                  ),
                ],
              ),
            ),

            const Spacer(),

            Row(
              children: [
                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.call),
                    label: const Text("Call"),
                  ),
                ),

                const SizedBox(width: 12),

                Expanded(
                  child: OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.message),
                    label: const Text("Message"),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            PrimaryButton(
              text: "Track Ride",
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) =>
                        const TrackingScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 20),

          ],
        ),
      ),
    );
  }
}