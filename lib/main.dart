import 'package:flutter/material.dart';
import 'package:graduation_project/core/widgets/Bottom_Navigation_Bar.dart';

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
      home: NavigationMenu(),
    );
  }
}
