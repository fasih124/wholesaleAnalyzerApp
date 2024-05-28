import 'package:flutter/material.dart';

class CustomerCard extends StatelessWidget {
  final int id;
  final String name;
  final String address;

  const CustomerCard({
    super.key,
    required this.id,
    required this.name,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: ListTile(
        onTap: () {
          print(id);
          Navigator.pushNamed(context, '/customerDetails');
        },
        leading: const Icon(
          Icons.person_outline,
          color: Colors.deepPurpleAccent,
          size: 48,
        ),
        title: Text(
          name,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(
          address,
          style: TextStyle(fontSize: 12),
        ),
        //trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
