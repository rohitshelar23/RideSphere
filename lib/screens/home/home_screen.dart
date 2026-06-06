import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../widgets/vehicle_card.dart';
import '../../widgets/service_card.dart';
import '../booking/booking_screen.dart';
import '../profile/profile_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment:
                    MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Good Evening",
                        style: TextStyle(
                          color:
                              AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 6),
                      const Text(
                        "Rohit",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight:
                              FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
  onTap: () {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => const ProfileScreen(),
      ),
    );
  },
  child: Container(
    padding: const EdgeInsets.all(14),
    decoration: BoxDecoration(
      color: AppColors.card,
      borderRadius: BorderRadius.circular(18),
    ),
    child: const Icon(
      Icons.person_outline,
      color: AppColors.primary,
    ),
  ),
),
                ],
              ),

              const SizedBox(height: 50),

              Container(
                padding:
                    const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  borderRadius:
                      BorderRadius.circular(32),
                  gradient: LinearGradient(
                    colors: [
                      AppColors.primary
                          .withValues(
                        alpha: 0.25,
                      ),
                      AppColors.card,
                    ],
                    begin: Alignment.topLeft,
                    end:
                        Alignment.bottomRight,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.primary
                          .withValues(
                        alpha: 0.12,
                      ),
                      blurRadius: 40,
                      offset:
                          const Offset(0, 20),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment:
                      CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Upcoming Ride",
                      style: TextStyle(
                        color:
                            AppColors.textSecondary,
                      ),
                    ),
                    const SizedBox(height: 18),
                    const Text(
                      "Airport Transfer",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight:
                            FontWeight.w800,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Text(
                      "Mumbai Airport → Taj Hotel",
                      style: TextStyle(
                        color:
                            AppColors.textSecondary,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 24),
                    Row(
                      children: [
                        _buildRideInfo(
                          "Date",
                          "30 May",
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        _buildRideInfo(
                          "Time",
                          "09:30 PM",
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 55),

              const Text(
                "Choose Your Ride",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w800,
                ),
              ),

              const SizedBox(height: 24),

              SizedBox(
                height: 320,
                child: ListView(
                  scrollDirection:
                      Axis.horizontal,
                  children: [
                    VehicleCard(
                      title:
                          "Executive Sedan",
                      subtitle:
                          "Premium comfort for business travel",
                      price: "₹2,499",
                      imagePath:
                          "assets/images/sedan.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const BookingScreen(),
                          ),
                        );
                      },
                    ),
                    VehicleCard(
                      title: "Luxury SUV",
                      subtitle:
                          "Spacious luxury experience",
                      price: "₹4,999",
                      imagePath:
                          "assets/images/suv.png",
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) =>
                                const BookingScreen(),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),

              const Text(
                "Executive Services",
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                ),
              ),

              const SizedBox(height: 20),

              const ServiceCard(
                icon: Icons.flight_takeoff,
                title: "Airport Transfer",
                subtitle:
                    "Real-time flight tracking",
              ),

              const ServiceCard(
                icon: Icons.business_center,
                title: "Corporate Travel",
                subtitle:
                    "Executive transportation service",
              ),

              const ServiceCard(
                icon: Icons.route,
                title: "Multi-stop Journey",
                subtitle:
                    "Luxury route planning",
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildRideInfo(
    String title,
    String value,
  ) {
    return Column(
      crossAxisAlignment:
          CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppColors.textSecondary,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          value,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}