import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({
    super.key,
    required String title,
  }) : _title = title;

  final String _title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          _title,
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
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                color: Colors.white,
                size: 32,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
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
    );
  }
}
