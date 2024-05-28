import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  const CustomerCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 5,
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          Icons.person_outline,
          size: 48,
        ),
        title: Text('John Doe', style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),),
        subtitle: Text('Manawala', style: TextStyle(
          fontSize: 16
        ),),
        //trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
