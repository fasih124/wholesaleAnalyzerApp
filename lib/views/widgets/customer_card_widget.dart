import 'package:flutter/material.dart';
import '../../utility/customer_info.dart';

class CustomerCard extends StatelessWidget {
  final int id;
  final String name;
  final String phone;
  final String address;

  const CustomerCard({
    super.key,
    required this.id,
    required this.name,
    required this.phone,
    required this.address,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      color: Colors.white,
      child: ListTile(
        onTap: () {
          final customerDetails = CustomerInfo(
            id: id,
            name: name,
            phone: phone,
            address: address,
          );

          Navigator.pushNamed(context, '/customerDetails',
              arguments: customerDetails);
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

        subtitle: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Text(
            address,
            style: TextStyle(fontSize: 15),
          ),
        ),
        //trailing: Icon(Icons.more_vert),
      ),
    );
  }
}
