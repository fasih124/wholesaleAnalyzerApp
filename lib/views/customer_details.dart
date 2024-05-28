import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';

import 'widgets/snake_navbar_widget.dart';

class CustomerDetails extends StatelessWidget {
  const CustomerDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
            color: Colors.blue,
          ),
        ),
        actions: const [
          SizedBox(width: 50,)
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
                    size: 70,
                  ),
                  title: const Column(
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
                            'John Doe',
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
                            '03033332324',
                            style: TextStyle(
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          // Icon(Icons.mail_outline),
                          // SizedBox(width: 12,),
                          Text(
                            'nigga@tuta.com',
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
                            'Lahore, Punjab',
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
                      Navigator.pushNamed(context, '/addCustomer');
                    },
                    child: const Text(
                      'Update',
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
              // Placeholder()
              const InvoiceCard(),
              const InvoiceCard(),
              const InvoiceCard(),
              const InvoiceCard(),
              const InvoiceCard(),
              const InvoiceCard(),
            ],
          ),
        ),
      ),

      //no need for navbar
      //bottomNavigationBar: const Snake(),
    );
  }
}
