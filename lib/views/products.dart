//dependency: flutter_snake_navigationbar: ^0.6.1
import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Products',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                elevation: 3,
                color: Colors.white,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/hitler.jpg'),
                  ),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh Hitler",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Available on free trial",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Text(
                    '\$0',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                color: Colors.white,
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/hitler.jpg'),
                  ),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh Hitler",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "1 month subscription",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Text(
                    '\$1',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Card(
                elevation: 3,
                color: Colors.white,

                child: ListTile(

                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset('assets/hitler.jpg'),
                  ),
                  title: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Fresh Hitler",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Life-time subscription",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  trailing: const Text(
                    '\$10',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                ),
              ),

              //Placeholder()
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 18,
        onPressed: () {},
        backgroundColor: Colors.blueAccent,
        child: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      bottomNavigationBar: const Snake(),

    );
  }
}
