import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

class Customers extends StatefulWidget {
  final String _title;
  const Customers({
    super.key,
    required String title,
  }): _title = title;

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  //int _selectedItemPosition = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          widget._title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        // no need for actions
        // actions: [
        //   Padding(
        //     padding: const EdgeInsets.all(8.0),
        //     child:
        //     IconButton(
        //       onPressed: () {
        //         Navigator.pushNamed(context, '/settings');
        //       },
        //       icon: const Icon(
        //         Icons.settings,
        //         color: Colors.white,
        //         size: 32,
        //       ),
        //     ),
        //   ),
        // ],
      ),
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Customers',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),

              CustomerCard(),
              CustomerCard(),
              CustomerCard(),
              CustomerCard(),

              //Placeholder()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 14,

        onPressed: () {
          Navigator.pushNamed(context, '/addCustomer');
        },
        backgroundColor: Colors.blueAccent,
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: const Snake(),
    );
  }
}
