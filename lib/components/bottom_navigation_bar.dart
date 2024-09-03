import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomNavBar extends StatelessWidget {
  final void Function(int)? onTabChange;
  const MyBottomNavBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: GNav(
        color: Colors.grey[300],
        activeColor: Colors.grey[700],
        tabActiveBorder: Border.all(color: Colors.white),
        tabBackgroundColor: Colors.grey,
        mainAxisAlignment: MainAxisAlignment.center,
        tabBorderRadius: 15,
        gap: 10,
        onTabChange: (value) => onTabChange?.call(value),
        tabs: const [
          GButton(
            icon: Icons.home,
            text: 'Home',
          ),
          GButton(
            icon: Icons.shopping_bag_rounded,
            text: 'Cart',
          ),
        ],
      ),
    );
  }
}
