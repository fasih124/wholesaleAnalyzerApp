import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

import '../controllers/invoice_controller.dart';
import '../models/invoice_model.dart';

class Orders extends StatefulWidget {
  final String _title;
  const Orders({super.key, required String title}) : _title = title;

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  final invoiceController = InvoiceController();
  late List<Invoice> invoices;

  @override
  void initState() {
    super.initState();
    _fetchInvoiceData(); // Call the function to fetch data on initialization
  }

  Future<void> _fetchInvoiceData() async {
    try {
      invoices = await invoiceController.getInvoice();

      setState(() {}); // Notify the widget to rebuild with updated data
    } catch (error) {
      print(error); // Handle errors appropriately (e.g., show error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: Text(
          widget._title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Orders',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: const ButtonStyle(
                      elevation: MaterialStatePropertyAll(2),
                      backgroundColor: MaterialStatePropertyAll(Colors.white),
//shape: MaterialStatePropertyAll(CircleBorder())
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.orange,
                      size: 40,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              FutureBuilder<List<Invoice>>(
                future: invoiceController.getInvoice(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final products = snapshot.data!;
                    return Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:
                          List.generate(invoices[0].data!.length, (index) {
                        return SizedBox(
                          // width: 250,
                          height: 100,
                          child: Padding(
                            padding: EdgeInsets.symmetric(vertical: 8.0),
                            child: invoices
                                    .isEmpty // Use invoices directly from snapshot.data
                                ? Text("No Invoice Yet!!!")
                                : InvoiceCard(
                                    id: invoices[0]?.data?[index]?.invoiceId
                                        as int,
                                    amount: invoices[0]?.data?[index]?.netAmount
                                        as String),
                          ),
                        );
                      }),
                    );
                  } else if (snapshot.hasError) {
                    return Text(
                        'Error: Unable to get Product'); // Handle errors
                  }
                  return Center(
                      child:
                          CircularProgressIndicator()); // Show loading indicator
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Snake(
        position: 3,
      ),
    );
  }
}
