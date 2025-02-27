import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:graduation_project/ProfilePage/view_profile.dart';
import 'package:graduation_project/core/utils/app_colors.dart';
import 'package:graduation_project/exams/exams_view.dart';
import 'package:graduation_project/home%20screen/view_home_screen.dart';
import 'package:graduation_project/detaills%20cours/screen/details_screen.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarItemState();
}

class _NavBarItemState extends State<NavBar> {
  int _currentIndex = 0; // ✅ تأكد أن هذا لا يتجاوز عدد العناصر

  final List<Widget> _pages = [
    HomeScreen(),
    DetailsScreenCours(title: 'Flutter Course'),
    ExamsView(),
    ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.transparent,
        buttonBackgroundColor: AppColors.primaryColor,
        color: AppColors.primaryColor,
        animationCurve: Curves.easeInOut,
        animationDuration: const Duration(milliseconds: 300),
        height: 60,
        index: _currentIndex, // ✅ تأكد أنه داخل النطاق الصحيح
        onTap: (index) {
          if (index >= 0 && index < _pages.length) { // ✅ التحقق قبل التغيير
            setState(() {
              _currentIndex = index;
            });
          }
        },
        items: const [
          Icon(Icons.home, color: Colors.white, size: 28),
          Icon(Icons.favorite, color: Colors.white, size: 28),
          Icon(Icons.notifications, color: Colors.white, size: 28),
          Icon(Icons.person, color: Colors.white, size: 28),
        ],
      ),
    );
  }
}
