//dependency: flutter_snake_navigationbar: ^0.6.1
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:wholesale_analyzer_project/views/widgets/product_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

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
  int _selectedItemPosition = 0; //for navigation bar

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
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
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Products',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 16,
              ),
              ProductCard(),
              ProductCard(),
              ProductCard(),
              ProductCard(),

              //Placeholder()
            ],
          ),
        ),
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

      bottomNavigationBar: const Snake(),
    );
  }
}
