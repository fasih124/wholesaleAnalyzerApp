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
      body: const SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Customers',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: TextStyle(
                        color: Color.fromRGBO(128, 128, 128, 0.9),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 18,
                ),
                // Placeholder(),
                SingleChildScrollView(
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

                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Products',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: TextStyle(
                        color: Color.fromRGBO(128, 128, 128, 0.9),
                      ),
                    ),
                  ],
                ),

                SingleChildScrollView(
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
                SizedBox(
                  height: 28,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Recent Invoice',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Show All',
                      style: TextStyle(
                        color: Color.fromRGBO(128, 128, 128, 0.9),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      // width: 250, //Centers the card on un-comment
                      height: 150,
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
