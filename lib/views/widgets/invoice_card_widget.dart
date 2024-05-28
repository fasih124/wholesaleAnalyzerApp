import 'package:flutter/material.dart';

class InvoiceCard extends StatelessWidget {
  const InvoiceCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Card(
      elevation: 3,
      color: Colors.white,
      child: ListTile(
        leading: Icon(
          Icons.receipt,
          size: 46,
        ),
        title: Flexible(
          child: Text(
            'Monolithic Suppressor', //the text length overflows the card size in long sized strings
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              '25-May-2024',
              style: TextStyle(
                fontSize: 16,
                // fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              '\$ 1',
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
