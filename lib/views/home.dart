import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/product_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';
import '../controllers/product_controller.dart';
import '../controllers/invoice_controller.dart';
import '../controllers/customer_controller.dart';
import '../models/product_model.dart';
import '../models/invoice_model.dart';
import '../models/customer_model.dart';

class Home extends StatefulWidget {
  final String _title;
  const Home({
    super.key,
    required String title,
  }) : _title = title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final productController = ProductController();
  final customerController = CustomerController();
  final invoiceController = InvoiceController();

  late List<Product> products;
  late List<Customer> customers;
  late List<Invoice> invoices;

  @override
  void initState() {
    super.initState();
    _fetchCustomerData();
    _fetchProductData(); // Call the function to fetch data on initialization
    _fetchInvoiceData(); // Call the function to fetch data on initialization
  }

  Future<void> _fetchProductData() async {
    try {
      products = await productController.getProduct();

      setState(() {}); // Notify the widget to rebuild with updated data
    } catch (error) {
      print(error); // Handle errors appropriately (e.g., show error message)
    }
  }

  Future<void> _fetchInvoiceData() async {
    try {
      invoices = await invoiceController.getInvoice();

      setState(() {}); // Notify the widget to rebuild with updated data
    } catch (error) {
      print(error); // Handle errors appropriately (e.g., show error message)
    }
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
        title: Text(
          widget._title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 26,
          ),
        ),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Expanded(
            child: Column(
              children: [
                //================= Customer ================================================================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Customers',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/customers');
                      },
                      child: const Text(
                        'Show All',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 0.9),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                FutureBuilder<List<Customer>>(
                  future: customerController
                      .getCustomer(), // Replace with your actual function
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final customers = snapshot.data!;
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                              List.generate(customers[0].data!.length, (index) {
                            return SizedBox(
                              width: 250,
                              height: 100,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: CustomerCard(
                                  id: customers[0]?.data?[index]?.customerId
                                      as int, // Access data directly from the list
                                  name: customers[0]?.data?[index]?.name
                                      as String,
                                  address: customers[0]?.data?[index]?.address
                                      as String,
                                ),
                              ),
                            );
                          }),
                        ),
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
                SizedBox(
                  height: 28,
                ),
                //================= product ================================================================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/product');
                      },
                      child: const Text(
                        'Show All',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 0.9),
                        ),
                      ),
                    ),
                  ],
                ),
                FutureBuilder<List<Product>>(
                  future: productController.getProduct(),
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      final products = snapshot.data!;
                      return SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children:
                              List.generate(products[0].data!.length, (index) {
                            return SizedBox(
                              width: 250,
                              height: 100,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: ProductCard(
                                  id: products[0].data?[index].productId ?? -1,
                                  name: products[0]
                                          .data?[index]
                                          .productName
                                          ?.toString() ??
                                      '',
                                  price:
                                      products[0].data?[index].productPrice ??
                                          'N/A',
                                ),
                              ),
                            );
                          }),
                        ),
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

                const SizedBox(
                  height: 28,
                ),
                //================= Invoices ================================================================================================
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Invoice',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        //Navigator.pushNamed(context, '/invoice');
                      },
                      child: const Text(
                        'Show All',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 0.9),
                        ),
                      ),
                    ),
                  ],
                ),
                FutureBuilder<List<Invoice>>(
                  future: invoiceController
                      .getInvoice(), // Replace with your actual function
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      // No changes needed here, existing code will use `snapshot.data!`
                      return invoices
                              .isEmpty // Use invoices directly from snapshot.data
                          ? Center(
                              child:
                                  CircularProgressIndicator()) // Show loading indicator
                          : Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: List.generate(invoices[0].data!.length,
                                  (index) {
                                return SizedBox(
                                  // width: 250,
                                  height: 100,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(vertical: 8.0),
                                    child: invoices
                                            .isEmpty // Use invoices directly from snapshot.data
                                        ? Text("No Invoice Yet!!!")
                                        : InvoiceCard(
                                            id: invoices[0]
                                                ?.data?[index]
                                                ?.invoiceId as int,
                                            amount: invoices[0]
                                                ?.data?[index]
                                                ?.netAmount as String),
                                  ),
                                );
                              }),
                            );
                    } else if (snapshot.hasError) {
                      return Text('Error: ${snapshot.error}'); // Handle errors
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
      ),
      bottomNavigationBar: const Snake(
        position: 0,
      ),
    );
  }
}
