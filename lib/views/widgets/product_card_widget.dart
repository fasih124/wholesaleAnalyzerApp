import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: ListTile(
        onTap: (){
          Navigator.pushNamed(context, '/productDetails');
        },
        leading: const Icon(
          color: Colors.green,
          Icons.inventory,
          size: 46,
        ),
        title: const Flexible(
          child: Text(
            'Desert Eagle', //the text length overflows the card size in long sized strings
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Gun',
              style: TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$ 10',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
        //trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
