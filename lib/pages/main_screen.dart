import 'package:flutter/material.dart';
import 'package:recipe_app/pages/MainScreen/checkout_screen.dart';
import 'package:recipe_app/pages/MainScreen/home_screen.dart';
import 'package:recipe_app/pages/MainScreen/profile_screen.dart';
import 'package:recipe_app/pages/MainScreen/transportation_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int selectedIndex = 0;
  final _pageOptions = [
    HomeScreen(),
    TransportationScreen(),
    CheckoutScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor:  Colors.grey[100],
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey[400],
          iconSize: 30,
          elevation: 5.0,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_filled), 
              label: 'Home'),
            BottomNavigationBarItem(
              icon: Icon(Icons.directions_bus_rounded),
              label: 'Delivery'),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_bag), 
              label: 'Checkout'),
            BottomNavigationBarItem(
              icon: Icon(Icons.person), 
              label: 'Profile'),
          ],
          currentIndex: selectedIndex,
          onTap: (index) {
            setState(() {
              selectedIndex = index;
            });
          }),
    );
  }
}
