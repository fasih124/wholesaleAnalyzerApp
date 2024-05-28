import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/snake_navbar_widget.dart';

class Orders extends StatelessWidget {
  final String _title;
  const Orders({super.key, required String title}) : _title = title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: Text(
          _title,
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
                    'Orders invoice',
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

              const InvoiceCard(),
              const InvoiceCard(),
              const InvoiceCard(),
              const InvoiceCard(),
              const InvoiceCard(),

              //Placeholder()
            ],
          ),
        ),
      ),


      bottomNavigationBar: const Snake(),
    );
  }
}
