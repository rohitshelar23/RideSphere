import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/primary_button.dart';
import '../../core/utils/page_transition.dart';
import '../driver/driver_assignment_screen.dart';


class BookingConfirmationScreen extends StatelessWidget {
  const BookingConfirmationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 60,
        ),
        child: Column(
          children: [

            const Spacer(),

            Container(
              height: 120,
              width: 120,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.primary,
                    AppColors.secondary,
                  ],
                ),
              ),
              child: const Icon(
                Icons.check_rounded,
                size: 60,
                color: Colors.black,
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Booking Confirmed",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 18),

            Text(
              "Your executive chauffeur has been successfully assigned.",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
                height: 1.7,
              ),
            ),

            const SizedBox(height: 50),

            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(28),
              ),
              child: Column(
                children: [

                  _buildRow(
                    "Booking ID",
                    "#RS2481",
                  ),

                  const SizedBox(height: 18),

                  _buildRow(
                    "Driver",
                    "Pramod Kumar",
                  ),

                  const SizedBox(height: 18),

                  _buildRow(
                    "ETA",
                    "8 Minutes",
                  ),
                ],
              ),
            ),

            const Spacer(),

            PrimaryButton(
              text: "View Details",
              onTap: () {
  Navigator.push(
    context,
    FadePageRoute(
      page: const DriverAssignmentScreen(),
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

  Widget _buildRow(
    String title,
    String value,
  ) {
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
      children: [

        Text(
          title,
          style: const TextStyle(
            color: AppColors.textSecondary,
          ),
        ),

        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
