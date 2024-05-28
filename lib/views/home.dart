//dependency: flutter_snake_navigationbar: ^0.6.1
import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/product_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

import '../controllers/product_controller.dart';
import '../models/product_model.dart';

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
  late List<Product> products;
  @override
  @override
  void initState() {
    super.initState();
    _fetchData(); // Call the function to fetch data on initialization
  }

  Future<void> _fetchData() async {
    try {
      products = await productController.getProduct();
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
                // ListView.builder(
                //   scrollDirection: Axis.horizontal,
                //   itemCount: 2, // Replace with the actual number of items
                //   itemBuilder: (context, index) {
                //     return SizedBox(
                //       width: 250,
                //       height: 100,
                //       child: Padding(
                //         padding: EdgeInsets.symmetric(horizontal: 8.0),
                //         child: CustomerCard(),
                //       ),
                //     );
                //   },
                // ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(10, (index) {
                      return SizedBox(
                        width: 250,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomerCard(),
                        ),
                      );
                    }),
                  ),
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
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(products[0].data!.length, (index) {
                      return SizedBox(
                        width: 250,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: products.isEmpty
                              ? Text("No Product Yet!!!")
                              : ProductCard(
                                  id: products[0]?.data?[index]?.productId
                                      as int,
                                  name: products[0]?.data?[index]?.productName
                                      as String,
                                  price: products[0]?.data?[index]?.productPrice
                                      as String,
                                ),
                        ),
                      );
                    }),
                  ),
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: List.generate(10, (index) {
                    return SizedBox(
                      // width: 250,
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.0),
                        child: InvoiceCard(),
                      ),
                    );
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: const Snake(),
    );
  }
}
