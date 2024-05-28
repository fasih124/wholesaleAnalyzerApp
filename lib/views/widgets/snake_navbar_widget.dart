// import 'package:flutter/material.dart';
// import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
//
// class Snake extends StatefulWidget {
//   final int position;
//   const Snake({super.key, required this.position});
//
//   @override
//   State<Snake> createState() => _SnakeState();
// }
//
// class _SnakeState extends State<Snake> {
//   int _selectedItemPosition = 0;
//
//   @override
//   void initState() {
//     super.initState();
//     _selectedItemPosition = widget.position; // Access widget after initState
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return SnakeNavigationBar.color(
//       backgroundColor: Colors.white,
//       behaviour: SnakeBarBehaviour.floating,
//       snakeShape: SnakeShape.circle,
//       //shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
//       padding: const EdgeInsets.all(0),
//
//       ///configuration for SnakeNavigationBar.color
//       snakeViewColor: Colors.blueAccent,
//       selectedItemColor: Colors.white,
//       unselectedItemColor: Colors.blueGrey,
//
//       ///configuration for SnakeNavigationBar.gradient
//       //snakeViewGradient:
//       //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
//       //unselectedItemGradient: unselectedGradient,
//
//       showUnselectedLabels: true,
//       showSelectedLabels: true,
//
//       currentIndex: _selectedItemPosition,
//       onTap: (index) => setState(() => _selectedItemPosition = index),
//       items: const [
//         BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.inventory_2_outlined), label: 'Product'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.person_outline), label: 'Customer'),
//         BottomNavigationBarItem(
//             icon: Icon(Icons.receipt_long_outlined), label: 'Order'),
//       ],
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

// Import your screen classes (replace with actual paths)
import '../home.dart';
import '../products.dart'; // Assuming 'products.dart' contains the Products class
import '../customers.dart';
import '../settings.dart';

class Snake extends StatefulWidget {
  final int position; // Initial position (optional)
  const Snake(
      {super.key, this.position = 0}); // Set default position to 0 (Home)

  @override
  State<Snake> createState() => _SnakeState();
}

class _SnakeState extends State<Snake> {
  int _selectedItemPosition = 0;

  @override
  void initState() {
    super.initState();
    _selectedItemPosition = widget.position;
  }

  @override
  Widget build(BuildContext context) {
    const String _title = 'Asasa Keeper';
    final List<Widget> screens = [
      const Home(title: _title), // Replace with your actual screen construction
      const Products(title: _title),
      const Customers(title: _title),
      const Settings(),
    ]; // Replace with your actual screens

    return SnakeNavigationBar.color(
      backgroundColor: Colors.white,
      behaviour: SnakeBarBehaviour.floating,
      snakeShape: SnakeShape.circle,
      padding: const EdgeInsets.all(0),

      /// Configuration for SnakeNavigationBar.color
      snakeViewColor: Colors.blueAccent,
      selectedItemColor: Colors.white,
      unselectedItemColor: Colors.blueGrey,

      showUnselectedLabels: true,
      showSelectedLabels: true,

      currentIndex: _selectedItemPosition,
      onTap: (index) => setState(() {
        _selectedItemPosition = index;
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => screens[index]),
        );
      }),
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
