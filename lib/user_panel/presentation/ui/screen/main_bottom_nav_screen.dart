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

  final labels = <String>[
    'Home',
    'Menu',
    'Offers',
    'Profile',
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
      resizeToAvoidBottomInset: false,
      body: screens[_currentIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: Icon(Icons.shopping_bag, color: Colors.white,),
        backgroundColor: Colors.pink,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: iconList.length,
        tabBuilder: (int index, bool isActive) {
          final color = isActive ? Colors.pink : Colors.grey;
          return Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                iconList[index],
                size: 24,
                color: color,
              ),
              const SizedBox(height: 4),
              Text(
                labels[index],
                style: TextStyle(
                  color: color,
                  fontSize: 12,
                ),
              )
            ],
          );
        },
        backgroundColor: Colors.white,
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
