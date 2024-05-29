import 'package:flutter/material.dart';

class UpdateInvoice extends StatefulWidget {
  const UpdateInvoice({super.key});

  @override
  State<UpdateInvoice> createState() => _UpdateInvoiceState();
}

class _UpdateInvoiceState extends State<UpdateInvoice> {
  TextEditingController updateQuantity = TextEditingController();
  TextEditingController updatePricePerItem = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                'Update Invoice',
                style: TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 26,
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
          //sets the title to center
          SizedBox(width: 40,)
        ],
      ),
      body: SingleChildScrollView(
        //avoids render overflow due to keyboard pop-up
        scrollDirection: Axis.vertical,

        child: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            const Icon(Icons.receipt_rounded,
              color: Colors.orange,
              size: 90,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Please fill-in the details',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 20,
                //fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              alignment: Alignment.centerLeft,
              //color: Colors.teal,   //to visualize the area under operation
              child: Padding(
                padding: const EdgeInsets.all(25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Customer',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        DropdownMenu(
                          label: Text('Select Customer'),
                          width: 160,

                          enableSearch: true,
                          enableFilter: true,
                          dropdownMenuEntries: <DropdownMenuEntry>[
                            DropdownMenuEntry(value: 1, label: 'Label 1'),
                            DropdownMenuEntry(value: 2, label: 'Label 2'),
                            DropdownMenuEntry(value: 3, label: 'Label 3'),
                            DropdownMenuEntry(value: 4, label: 'Label 4'),

                          ],
                        ),
                      ],
                    ),


                    const SizedBox(
                      height: 20,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Product',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        DropdownMenu(
                          label: Text('Select Product'),
                          width: 160,

                          enableSearch: true,
                          enableFilter: true,
                          dropdownMenuEntries: <DropdownMenuEntry>[
                            DropdownMenuEntry(value: 1, label: 'Label 1'),
                            DropdownMenuEntry(value: 2, label: 'Label 2'),
                            DropdownMenuEntry(value: 3, label: 'Label 3'),
                            DropdownMenuEntry(value: 4, label: 'Label 4'),

                          ],
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Quantity',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.left,
                            controller: updateQuantity,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  20, 5, 20, 5), //controls the field size
                              hintText: '5', //fetch from DB
                              hintStyle: TextStyle(

                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(206, 206, 206, 0.5),

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(32))),

                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(32)),
                              ),
                              //labelText: 'User Name',
                            ),
                          ),
                        ),
                      ],
                    ),

                    // const SizedBox(
                    //   height: 20,
                    // ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Price / item',
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          height: 70,
                          width: 100,
                          child: TextField(
                            textAlign: TextAlign.left,
                            controller: updatePricePerItem,
                            decoration: const InputDecoration(
                              contentPadding: EdgeInsets.fromLTRB(
                                  20, 5, 20, 5), //controls the field size
                              hintText: '200', //fetch from DB
                              hintStyle: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w300,
                                color: Colors.black,
                              ),
                              filled: true,
                              fillColor: Color.fromRGBO(206, 206, 206, 0.5),

                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(32))),

                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                ),
                                borderRadius: BorderRadius.all(Radius.circular(32)),
                              ),
                              //labelText: 'User Name',
                            ),
                          ),
                        ),
                      ],
                    ),

                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 35.0),
                        child: ElevatedButton(
                          onPressed: () {

                          },
                          style: const ButtonStyle(
                              elevation: MaterialStatePropertyAll(3),
                              backgroundColor:
                              MaterialStatePropertyAll(Colors.blueAccent)),
                          child: const Text(
                            'Update Invoice',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
