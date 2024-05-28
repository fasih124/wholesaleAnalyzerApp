import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

class Snake extends StatefulWidget {
  const Snake({super.key});

  @override
  State<Snake> createState() => _SnakeState();
}

class _SnakeState extends State<Snake> {
  int _selectedItemPosition = 1;
  @override
  Widget build(BuildContext context) {
    return SnakeNavigationBar.color(
      backgroundColor: Colors.white,
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      padding: const EdgeInsets.all(0),

      ///configuration for SnakeNavigationBar.color
      snakeViewColor: Colors.blueAccent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.blueGrey,

      ///configuration for SnakeNavigationBar.gradient
      //snakeViewGradient:
      //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
      //unselectedItemGradient: unselectedGradient,

      showUnselectedLabels: true,
      showSelectedLabels: true,

      currentIndex: _selectedItemPosition,
      onTap: (index) => setState(() => _selectedItemPosition = index),
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(
            icon: Icon(Icons.inventory_2_outlined), label: 'Product'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Customer'),
        BottomNavigationBarItem(
            icon: Icon(Icons.receipt_long_outlined), label: 'Order'),
      ],
    );

  }
}
