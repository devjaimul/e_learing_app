import 'package:e_learing_app/utlis/colors.dart';
import 'package:e_learing_app/views/home_screen.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  List<Widget> screen=[
    const HomeScreen(),
    const Center(child: Text('My learning'),),
    const Center(child: Text('wishList'),),
    const Center(child: Text('setting'),),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: AppColors.primaryColor,
          selectedLabelStyle: const TextStyle(fontWeight: FontWeight.w500),
          unselectedItemColor: Colors.black.withOpacity(0.6),
          showUnselectedLabels: true,
          // showSelectedLabels: false,
          type: BottomNavigationBarType.fixed,
          currentIndex: currentIndex,
          onTap: (value) {
            setState(() {
              currentIndex = value;
            });
          },
          items: const [
            BottomNavigationBarItem(
              activeIcon: Icon(Icons.star),
                icon: Icon(Icons.star_border_outlined), label: "Featured"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.play_circle),
                icon: Icon(Icons.play_circle_outline_outlined),
                label: "My Learning"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.favorite),
                icon: Icon(Icons.favorite_border_outlined), label: "Wishlist"),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.settings_rounded),
                icon: Icon(Icons.settings), label: "Setting"),
          ]),
    );
  }
}
