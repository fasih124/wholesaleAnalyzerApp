import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

import '../controllers/customer_controller.dart';
import '../models/customer_model.dart';

class Customers extends StatefulWidget {
  final String _title;
  const Customers({
    super.key,
    required String title,
  }) : _title = title;

  @override
  State<Customers> createState() => _CustomersState();
}

class _CustomersState extends State<Customers> {
  final customerController = CustomerController();

  late List<Customer> customers;

  @override
  void initState() {
    super.initState();
    _fetchCustomerData();
  }

  Future<void> _fetchCustomerData() async {
    try {
      customers = await customerController.getCustomer();
      setState(() {});
    } catch (error) {
      print(error);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,

        title: Text(
          widget._title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
        // no need for actions
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/settings');
              },
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              'Customers',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FutureBuilder<List<Customer>>(
            future: customerController
                .getCustomer(), // Replace with your actual function
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final customers = snapshot.data!;
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(customers[0].data!.length, (index) {
                      return SizedBox(
                        // width: 250,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: CustomerCard(
                            id: customers[0]?.data?[index]?.customerId
                                as int, // Access data directly from the list
                            name: customers[0]?.data?[index]?.name as String,
                            address:
                                customers[0]?.data?[index]?.address as String,
                          ),
                        ),
                      );
                    }),
                  ),
                );
              } else if (snapshot.hasError) {
                return Text('Error: Unable to get Product'); // Handle errors
              }
              return Center(
                  child: CircularProgressIndicator()); // Show loading indicator
            },
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 14,
        onPressed: () {
          Navigator.pushNamed(
            context,
            '/addCustomer',
          );
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      bottomNavigationBar: const Snake(
        position: 2,
      ),
    );
  }
}
