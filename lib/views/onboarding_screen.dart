import 'package:e_learing_app/utlis/colors.dart';
import 'package:e_learing_app/views/na-bar-views/navbar.dart';
import 'package:e_learing_app/widgets/custom_buttons.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(),
            const Image(
              image: AssetImage('assets/images/pic0.png'),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              height: size.height * 0.4,
              width: size.width * 90,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(30)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    textAlign: TextAlign.center,
                    'Discover your next skill \nLearn anything you want!',
                    style: TextStyle(
                        color: AppColors.textColor,
                        fontSize: 29,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'Discover the things you want to \n learn and grow with them',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5),
                      fontSize: 15,
                    ),
                  ),
                  CustomButton(
                    buttonData: "Get Started",
                    buttonWidth: size.width * 0.4,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const NavBar(),
                          ));
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
