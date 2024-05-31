import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/screen/home_screen.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/screen/menu_screen.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/screen/offer_screen.dart';
import 'package:food_delivery_multi_panel_app/user_panel/presentation/ui/screen/profile_screen.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  int _currentIndex = 0;
  final iconList = <IconData>[
    Icons.home_filled,
    Icons.menu_book_outlined,
    Icons.local_offer_outlined,
    Icons.person_pin,
  ];

  final screens = <Widget>[
    HomeScreen(),
    MenuScreen(),
    OfferScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.shopping_bag),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: iconList,
        activeIndex: _currentIndex,
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        leftCornerRadius: 32,
        rightCornerRadius: 32,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
