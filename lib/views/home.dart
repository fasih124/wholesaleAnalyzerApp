//dependency: flutter_snake_navigationbar: ^0.6.1
import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/product_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

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
                      onPressed: (){
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
                // Placeholder(),
                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomerCard(),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: CustomerCard(),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(
                  height: 28,
                ),
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
                      onPressed: (){
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

                const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: ProductCard(),
                        ),
                      ),
                      SizedBox(
                        width: 250,
                        height: 100,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 8.0),
                          child: ProductCard(),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Recent Orders',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: (){
                        //Navigator.pushNamed(context, '/invoice');
                      },
                      child: TextButton(
                        onPressed: (){
                        Navigator.pushNamed(context, '/orders');
                        },
                        child: const Text(
                        'Show All',
                        style: TextStyle(
                          color: Color.fromRGBO(128, 128, 128, 0.9),
                        ),
                      ),
                    ),
                    ),
                  ],
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // width: 250, //Centers the card on un-comment
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 8.0),
                        child: InvoiceCard(), //bug in this widget class
                      ),
                    ),
                    SizedBox(
                      //width: 250,   //Centers the card on un-comment
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 0.0),
                        child: InvoiceCard(), //bug in this widget class
                      ),
                    ),
                    SizedBox(
                      //width: 250,   //Centers the card on un-comment
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 0),
                        child: InvoiceCard(), //bug in this widget class
                      ),
                    ),
                    SizedBox(
                      //width: 250,   //Centers the card on un-comment
                      height: 100,
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 0),
                        child: InvoiceCard(), //bug in this widget class
                      ),
                    ),
                  ],
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
