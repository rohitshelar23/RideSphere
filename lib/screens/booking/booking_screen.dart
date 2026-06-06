import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/primary_button.dart';
import 'booking_confirmation_screen.dart';
import '../../core/utils/page_transition.dart';


class BookingScreen extends StatelessWidget {
  const BookingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),

      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              "Book Your Ride",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.w800,
              ),
            ),

            const SizedBox(height: 14),

            Text(
              "Executive transportation experience tailored for your journey.",
              style: TextStyle(
                color: AppColors.textSecondary,
                fontSize: 16,
                height: 1.7,
              ),
            ),

            const SizedBox(height: 40),

            _buildInput(
              "Pickup Location",
              Icons.location_on_outlined,
            ),

            const SizedBox(height: 24),

            _buildInput(
              "Drop Location",
              Icons.flag_outlined,
            ),

            const SizedBox(height: 24),

            _buildInput(
              "Flight Number",
              Icons.flight_takeoff_rounded,
            ),

            const SizedBox(height: 24),

            Row(
              children: [

                Expanded(
                  child: _buildInput(
                    "Date",
                    Icons.calendar_month_outlined,
                  ),
                ),

                const SizedBox(width: 16),

                Expanded(
                  child: _buildInput(
                    "Time",
                    Icons.access_time_rounded,
                  ),
                ),
              ],
            ),

            const SizedBox(height: 24),

            _buildInput(
              "Passengers",
              Icons.people_outline_rounded,
            ),

            const SizedBox(height: 24),

            _buildInput(
              "Special Notes",
              Icons.edit_note_rounded,
              maxLines: 4,
            ),

            const SizedBox(height: 50),

            Container(
              padding: const EdgeInsets.all(24),
              decoration: BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.circular(28),
                border: Border.all(
                  color: Colors.white.withValues(alpha: 0.03),
                ),
              ),
              child: Column(
                children: [

                  _buildSummaryRow(
                    "Vehicle",
                    "Executive Sedan",
                  ),

                  const SizedBox(height: 18),

                  _buildSummaryRow(
                    "Estimated Fare",
                    "₹2,499",
                  ),

                  const SizedBox(height: 18),

                  _buildSummaryRow(
                    "Distance",
                    "22 KM",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            PrimaryButton(
              text: "Confirm Booking",
              onTap: () {
                Navigator.push(
                  context,
                  FadePageRoute(
                    page: const BookingConfirmationScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }

  Widget _buildInput(
    String hint,
    IconData icon, {
    int maxLines = 1,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.card,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          color: Colors.white.withValues(alpha: 0.05),
        ),
      ),
      child: TextField(
        maxLines: maxLines,
        style: const TextStyle(
          color: AppColors.textPrimary,
        ),
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(
            color: AppColors.textSecondary,
          ),
          prefixIcon: Icon(
            icon,
            color: AppColors.primary,
          ),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 22,
          ),
        ),
      ),
    );
  }

  Widget _buildSummaryRow(
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
            fontSize: 16,
          ),
        ),

        Text(
          value,
          style: const TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}
