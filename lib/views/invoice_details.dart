import 'package:flutter/material.dart';

class InvoiceDetails extends StatefulWidget {
  const InvoiceDetails({super.key});

  @override
  State<InvoiceDetails> createState() => _InvoiceDetailsState();
}

class _InvoiceDetailsState extends State<InvoiceDetails> {
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
                'Invoice Details',
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
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //Placeholder(),
              const Icon(
                Icons.receipt_outlined,
                color: Colors.orange,
                size: 100,
              ),
              const SizedBox(height: 20,),

//-------------- CARD SIZING NEEDS TO BE DYNAMIC or else render flowed------------------
              const SizedBox(
                height: 120,
                width: 400,
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Invoice Information',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.receipt,color: Colors.orange,),

                          ],
                        ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                              'Invoice ID: ',
                          ),
                          Text(
                            '1234123',
                          ),
                        ],
                      ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Date: ',
                            ),
                            Text(
                              '29-May-2024',
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const SizedBox(
                height: 250,
                width: 400,
                child: Card(
                  elevation: 5,
                  color: Colors.white,
                  child: Padding(
                    padding: EdgeInsets.all(15.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Product Details',
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.inventory_2, color: Colors.green,)
                          ],
                        ),
                        SizedBox(height: 10,),

                        //----------------HEADINGS---------------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Description',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Quantity',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Amount',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        //------------BELOW AREA FOR DATA PRINTING-----------
                        SizedBox(height: 10,),
                        //-----------ROW 1--------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Item 1',
                            ),
                            Text(
                              '1',
                            ),
                            Text(

                              '100',
                            ),
                          ],
                        ),

                        //-----------ROW 2--------------
                        Divider(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Item 2',
                            ),
                            Text(
                              '2',
                            ),
                            Text(

                              '200',
                            ),
                          ],
                        ),
                        Divider(),
                        //-----------ROW 3--------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Item 3',
                            ),
                            Text(
                              '3',
                            ),
                            Text(

                              '300',
                            ),
                          ],
                        ),
                        Divider(),
                        //-----------ROW 4--------------
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Item 4',
                            ),
                            Text(
                              '4',
                            ),
                            Text(

                              '400',
                            ),
                          ],
                        ),

                      ],
                    ),

                  ),
                ),
              ),
              const SizedBox(height: 10,),
              const Card(
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Billing Amount',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.monetization_on, color: Colors.cyan,),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Sub Total',
                          ),
                          Text(
                            '2000',
                          ),
                        ],
                      ),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Discounts',
                          ),
                          Text(
                            '-878',
                          ),
                        ],
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Total Bill',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                          Text(
                            '30000',
                          ),
                        ],
                      ),

                    ],
                  ),

                ),
              ),


              const SizedBox(height: 10,),
              const Card(
                elevation: 5,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Customer Details',
                            style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.person, color: Colors.deepPurpleAccent,),

                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Name',
                          ),
                          Text(
                            'xyz',
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Phone',
                          ),
                          Text(
                            '0300 000 0000',
                          ),


                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Address',
                            style: TextStyle(
                              // fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Lahore',
                          ),
                        ],
                      ),

                    ],
                  ),

                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor:
                      MaterialStatePropertyAll(Colors.blueAccent),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, '/updateProduct');
                    },
                    child: const Text(
                      'Update Invoice',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),

            ],
            //------------MAIN COLUMN ENDS--------------
          ),
        ),
      ),

      //no need for navbar
      //bottomNavigationBar: const Snake(),
    );
  }
}
