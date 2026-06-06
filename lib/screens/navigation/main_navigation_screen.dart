import 'package:flutter/material.dart';

import '../home/home_screen.dart';
import '../bookings/bookings_screen.dart';
import '../profile/profile_screen.dart';
import '../tracking/tracking_screen.dart';
import '../../core/constants/app_colors.dart';


class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() =>
      _MainNavigationScreenState();
}

class _MainNavigationScreenState
    extends State<MainNavigationScreen> {
  int currentIndex = 0;

  final screens = [
    const HomeScreen(),
    const BookingsScreen(),
    const TrackingScreen(),
    const ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.primary,
unselectedItemColor: Colors.grey,
backgroundColor: AppColors.card,
type: BottomNavigationBarType.fixed,

        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined),
            label: "Trips",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: "Tracking",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}