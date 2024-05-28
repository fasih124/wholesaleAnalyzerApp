import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final int id;
  final String name;
  final String price;

  const ProductCard({
    super.key,
    required this.id,
    required this.name,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: ListTile(
        onTap: () {
          print("----------"); // Access the id property directly
          print(id); // Access the id property directly
          print("----------"); // Access the id property directly
        },
        leading: const Icon(
          Icons.inventory,
          size: 46,
        ),
        title: Text(
          name, // Access the name property directly
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          '\$$price', // Concatenate string with price directly
          style: const TextStyle(fontSize: 12),
        ),
        //trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
