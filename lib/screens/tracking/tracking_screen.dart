import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class TrackingScreen extends StatelessWidget {
  const TrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Stack(
        children: [

         // MAP AREA
Container(
  decoration: const BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFF1A1A1A),
        Color(0xFF0B0B0D),
      ],
    ),
  ),
),

Align(
  alignment: const Alignment(0, -0.55),
  child: Text(
    "Demo Version — Live Map Not Included",
    textAlign: TextAlign.center,
    style: TextStyle(
      color: AppColors.textSecondary,
      fontSize: 16,
      fontWeight: FontWeight.w500,
    ),
  ),
),

// TOP BAR
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [

                  _topButton(
                    Icons.arrow_back_ios_new_rounded,
                        () {
                      Navigator.pop(context);
                    },
                  ),

                  _topButton(
                    Icons.support_agent_rounded,
                        () {},
                  ),
                ],
              ),
            ),
          ),

          // DRIVER CAR ICON
          Align(
            alignment: const Alignment(0, -0.15),
            child: Container(
              height: 90,
              width: 90,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                  colors: [
                    AppColors.primary,
                    AppColors.secondary,
                  ],
                ),
                boxShadow: [
                  BoxShadow(
  color: AppColors.primary.withValues(
    alpha: 0.20,
  ),
  blurRadius: 55,
  spreadRadius: 5,
),
                ],
              ),
              child: const Icon(
                Icons.directions_car_filled_rounded,
                color: Colors.black,
                size: 44,
              ),
            ),
          ),

          // BOTTOM SHEET
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: const EdgeInsets.all(28),
              decoration: const BoxDecoration(
                color: AppColors.card,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(36),
                  topRight: Radius.circular(36),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment:
                    CrossAxisAlignment.start,
                children: [

                  Center(
                    child: Container(
                      width: 60,
                      height: 5,
                      decoration: BoxDecoration(
                        color: Colors.white12,
                        borderRadius:
                        BorderRadius.circular(20),
                      ),
                    ),
                  ),

                  const SizedBox(height: 30),

                  const Text(
                    "Driver Arriving",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  const SizedBox(height: 14),

                  Text(
                    "Your chauffeur is on the way to your pickup location.",
                    style: TextStyle(
                      color: AppColors.textSecondary,
                      fontSize: 16,
                      height: 1.6,
                    ),
                  ),

                  const SizedBox(height: 30),

                  // DRIVER CARD
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.background,
                      borderRadius:
                      BorderRadius.circular(24),
                    ),
                    child: Row(
                      children: [

                        Container(
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            borderRadius:
                            BorderRadius.circular(22),
                            gradient: LinearGradient(
                              colors: [
                                AppColors.primary,
                                AppColors.secondary,
                              ],
                            ),
                          ),
                          child: const Icon(
                            Icons.person_rounded,
                            color: Colors.black,
                            size: 40,
                          ),
                        ),

                        const SizedBox(width: 18),

                        Expanded(
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [

                              const Text(
                                "Pramod Kumar",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight:
                                  FontWeight.w700,
                                ),
                              ),

                              const SizedBox(height: 8),

                              Text(
                                "Executive Chauffeur",
                                style: TextStyle(
                                  color: AppColors
                                      .textSecondary,
                                ),
                              ),
                            ],
                          ),
                        ),

                        Column(
                          crossAxisAlignment:
                          CrossAxisAlignment.end,
                          children: [

                            const Text(
                              "8 Min",
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight:
                                FontWeight.w800,
                                color:
                                AppColors.primary,
                              ),
                            ),

                            const SizedBox(height: 6),

                            Text(
                              "ETA",
                              style: TextStyle(
                                color: AppColors
                                    .textSecondary,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 32),

                  const Text(
                    "Trip Progress",
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  const SizedBox(height: 24),

                  _buildProgressStep(
                    true,
                    "Driver Assigned",
                  ),

                  _buildProgressStep(
                    true,
                    "Driver En Route",
                  ),

                  _buildProgressStep(
                    false,
                    "Passenger Pickup",
                  ),

                  _buildProgressStep(
                    false,
                    "Trip Completed",
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _topButton(
      IconData icon,
      VoidCallback onTap,
      ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          color: AppColors.card,
          borderRadius: BorderRadius.circular(18),
        ),
        child: Icon(
          icon,
          color: AppColors.textPrimary,
        ),
      ),
    );
  }

  Widget _buildProgressStep(
      bool completed,
      String title,
      ) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 22),
      child: Row(
        children: [

          Container(
            height: 22,
            width: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: completed
                  ? AppColors.primary
                  : Colors.white10,
            ),
            child: completed
                ? const Icon(
              Icons.check,
              size: 14,
              color: Colors.black,
            )
                : null,
          ),

          const SizedBox(width: 18),

          Text(
            title,
            style: TextStyle(
              fontSize: 17,
              color: completed
                  ? AppColors.textPrimary
                  : AppColors.textSecondary,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}

