import 'package:flutter/material.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      animationCurve: Curves.decelerate,
      animationDuration: const Duration(milliseconds: 300),
      index: 1,
      backgroundColor: Colors.black,
      color: Colors.black,
      height: 60,
      items: const [
        Icon(Icons.bubble_chart, color: Colors.white, size: 30),
        Icon(Icons.image, color: Colors.white, size: 30),
        Icon(Icons.dark_mode, color: Colors.white, size: 30),
      ],
    );
  }
}
