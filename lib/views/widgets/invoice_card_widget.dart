import 'package:flutter/material.dart';

class InvoiceCard extends StatelessWidget {
  final int id;
  final String amount;
  const InvoiceCard({
    super.key,
    required this.id,
    required this.amount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      color: Colors.white,
      child: ListTile(
        onTap: (){
          Navigator.pushNamed(context, '/invoiceDetails');
        },
        leading: const Icon(
          Icons.receipt,
          color: Colors.orange,
          size: 46,
        ),
        title: const Flexible(
          child: Text(
            'Invoice # ${this.id}', //the text length overflows the card size in long sized strings
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '\$ ${this.amount}',
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
