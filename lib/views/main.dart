import 'package:e_learing_app/views/home_screen.dart';
import 'package:e_learing_app/views/onboarding_screen.dart';
import 'package:flutter/material.dart';

import '../utlis/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),

      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.backGrounColor,
      ),

    );
  }
}

