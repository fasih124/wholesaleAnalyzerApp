import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';

import '../controllers/invoice_controller.dart';
import '../models/invoice_model.dart';
import '../utility/customer_info.dart';
import 'widgets/snake_navbar_widget.dart';

class CustomerDetails extends StatefulWidget {
  const CustomerDetails({super.key});

  @override
  State<CustomerDetails> createState() => _CustomerDetailsState();
}

class _CustomerDetailsState extends State<CustomerDetails> {
  final invoiceController = InvoiceController();
  late List<Invoice> invoices;

  @override
  void initState() {
    super.initState();
    // Call the function to fetch data on initialization
  }

  Future<void> _fetchInvoiceData(id) async {
    try {
      invoices = await invoiceController.getInvoiceById(id);

      setState(() {}); // Notify the widget to rebuild with updated data
    } catch (error) {
      print(error); // Handle errors appropriately (e.g., show error message)
    }
  }

  @override
  Widget build(BuildContext context) {
    final customerDetails =
        ModalRoute.of(context)?.settings.arguments as CustomerInfo?;
    if (customerDetails != null) {
// Access data from customerDetails
      final id = customerDetails.id;
      final name = customerDetails.name;
      final phone = customerDetails.phone;
      _fetchInvoiceData(id);
      final address = customerDetails.address;
      return Scaffold(
//backgroundColor: Colors.white,
        appBar: AppBar(
//backgroundColor: const Color.fromRGBO(206, 206, 206, 0.5),
          titleTextStyle: const TextStyle(
              fontSize: 30,
//universal color for all elements
              color: Colors.black),
          centerTitle: true,
          title: const Column(
            children: [
              Center(
                child: Text(
                  'Customer Details',
                  style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.blueAccent,
            ),
          ),
          actions: const [
            SizedBox(
              width: 50,
            )
          ],
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
//Placeholder(),
                Card(
                  elevation: 5,
                  color: Colors.white,
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.person_outline,
                      color: Colors.deepPurpleAccent,
                      size: 70,
                    ),
                    title: Column(
//Don't remove comments from this section. Required for gold-plating
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
// Icon(Icons.person_outline),
// SizedBox(
//   width: 12,
// ),
                            Text(
                              name,
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
// Icon(Icons.phone_outlined),
// SizedBox(
//   width: 12,
// ),
                            Text(
                              phone,
                              style: TextStyle(
                                fontSize: 16,
//fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
// Icon(Icons.person_outline),
// SizedBox(width: 12,),
                            Text(
                              address,
                              style: TextStyle(
                                fontSize: 16,
//fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),

                const SizedBox(
                  height: 30,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Invoice',
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll(Colors.blueAccent),
                      ),
                      onPressed: () {
                        final customerDetails = CustomerInfo(
                          id: id,
                          name: name,
                          phone: phone,
                          address: address,
                        );
                        Navigator.pushNamed(context, '/updateCustomer',
                            arguments: customerDetails);
                      },
                      child: const Text(
                        'Update Customer',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(
                  height: 30,
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
                              child: invoices.isEmpty ||
                                      invoices[0].data!.length ==
                                          0 // Use invoices directly from snapshot.data
                                  ? Text("No Invoice Yet!!!")
                                  : InvoiceCard(
                                      id: invoices[0]?.data?[index]?.invoiceId
                                          as int,
                                      amount: invoices[0]
                                          ?.data?[index]
                                          ?.netAmount as String),
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

//no need for navbar
//bottomNavigationBar: const Snake(),
      );
    } else {
      return Scaffold(
          appBar: AppBar(
//backgroundColor: const Color.fromRGBO(206, 206, 206, 0.5),
            titleTextStyle: const TextStyle(
                fontSize: 30,
//universal color for all elements
                color: Colors.black),
            centerTitle: true,
            title: const Column(
              children: [
                Center(
                  child: Text(
                    'Customer Details',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.blueAccent,
              ),
            ),
            actions: const [
              SizedBox(
                width: 50,
              )
            ],
          ),
          body: Center(
            child: const Text('Error: No customer details provided.'),
          ));
    }
  }
}
