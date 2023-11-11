import 'package:flutter/material.dart';
import 'package:music_test_app/screens/home_screen.dart';

import '../wishlist_screen.dart';

class ButtomNavigatorPage extends StatefulWidget {
  const ButtomNavigatorPage({super.key});

  @override
  State<ButtomNavigatorPage> createState() => _ButtomNavigatorPageState();
}

class _ButtomNavigatorPageState extends State<ButtomNavigatorPage> {
  int current = 0;
  List routs = [
    const HomeScreen(),
    const WishlistScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: current == 0 ? Colors.blue.shade900 : Colors.blueGrey.shade900,
      body: routs[current],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.white70,
          backgroundColor: current == 0 ? const Color(0xFF348DD6) : Colors.blueGrey.shade700,
          onTap: (value) {
            setState(() {
              current = value;
            });
          },
          currentIndex: current,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_outline), label: 'Wishlist'),
          ],
        ),
      ),
    );
  }
}
