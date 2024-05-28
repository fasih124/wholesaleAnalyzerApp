//dependency: flutter_snake_navigationbar: ^0.6.1
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:wholesale_analyzer_project/views/widgets/product_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

import '../controllers/product_controller.dart';
import '../models/product_model.dart';

class Products extends StatefulWidget {
  final String _title;

  const Products({
    super.key,
    required String title,
  }) : _title = title;

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  final productController = ProductController();

  late List<Product> products;

  @override
  void initState() {
    super.initState();

    _fetchProductData(); // Call the function to fetch data on initialization
  }

  Future<void> _fetchProductData() async {
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
      //backgroundColor: Colors.white,
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
              'Products',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          FutureBuilder<List<Product>>(
            future: productController.getProduct(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final products = snapshot.data!;
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(products[0].data!.length, (index) {
                      return SizedBox(
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(vertical: 4.0),
                          child: ProductCard(
                            id: products[0].data?[index].productId ?? -1,
                            name: products[0]
                                    .data?[index]
                                    .productName
                                    ?.toString() ??
                                '',
                            price:
                                products[0].data?[index].productPrice ?? 'N/A',
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
        elevation: 18,
        onPressed: () {
          Navigator.pushNamed(context, '/addProduct');
        },
        backgroundColor: Colors.blueAccent,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: const Snake(
        position: 1,
      ),
    );
  }
}
