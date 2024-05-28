import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/widgets/invoice_card_widget.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

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
                'Product Details',
                style: TextStyle(
                  color: Colors.blueAccent,
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
            color: Colors.blueAccent,
          ),
        ),
        actions: const [
          SizedBox(
            width: 50,
          )
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
                  onTap: () {

                  },
                  leading: const Icon(
                    Icons.inventory_2_outlined,
                    color: Colors.green,
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
                            'Dirtoo Soap',
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
                            'Cleanliness on next-level',
                            style: TextStyle(
                              fontSize: 16,
                              //fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      // Row(
                      //   children: [
                      //     // Icon(Icons.mail_outline),
                      //     // SizedBox(width: 12,),
                      //     Text(
                      //       'nigga@tuta.com',
                      //       style: TextStyle(
                      //         fontSize: 16,
                      //         //fontWeight: FontWeight.bold,
                      //       ),
                      //     ),
                      //   ],
                      // ),
                      Row(
                        children: [
                          // Icon(Icons.person_outline),
                          // SizedBox(width: 12,),
                          Text(
                            '\$ 1',
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // const Text(
                  //   'Invoice',
                  //   style: TextStyle(
                  //     fontSize: 26,
                  //     fontWeight: FontWeight.bold,
                  //   ),
                  // ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.blueAccent),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/updateProduct');
                    },
                    child: const Text(
                      'Update Product',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
        ),
      ),

      //no need for navbar
      //bottomNavigationBar: const Snake(),
    );
  }
}
