import 'package:flutter/material.dart';
import 'package:graduation_project/Nav%20Bar%20Iteam/Bottom_Navigation_Bar.dart';
import 'package:graduation_project/Nav%20Bar%20Iteam/navbar.dart';

void main() {
  runApp(const TeachConnect());
}

class TeachConnect extends StatelessWidget {
  const TeachConnect({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'cairo',
      ),
      debugShowCheckedModeBanner: false,
      home: NavBarItem(),
    );
  }
}
