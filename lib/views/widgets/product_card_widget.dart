import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: ListTile(
        onTap: (){},
        leading: const Icon(
          Icons.inventory,
          size: 46,
        ),
        title: const Text('Desert Eagle', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        subtitle: const Text('\$ Free Trial',style: TextStyle(fontSize: 16),),
        //trailing: Icon(Icons.more_vert),
      ),
    );
  }
}