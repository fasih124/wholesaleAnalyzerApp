import 'package:flutter/material.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({super.key});

  @override
  State<AddProduct> createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {

  TextEditingController addProductName = TextEditingController();
  TextEditingController addProductDetail = TextEditingController();
  TextEditingController addQuantity = TextEditingController();
  TextEditingController addPrice = TextEditingController();

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
                'Add Product',
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
              height: 20,
            ),

            const Icon(Icons.inventory,
              color: Colors.green,
              size: 70,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Product Name',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.left,
                      controller: addProductName,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: 'Dirtoo Soap', //fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Detail',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.left,
                      controller: addProductDetail,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: 'Family pack', //fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
                          color: Colors.grey,
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

                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Quantity',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                     TextField(
                      textAlign: TextAlign.left,
                      controller: addQuantity,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: '15', //fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Price',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                     TextField(
                      textAlign: TextAlign.left,
                      controller: addPrice,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        prefix: Text('Rs. ', style: TextStyle(color:  Colors.black),),
                        hintText: '150',//fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w300,
                          color: Colors.grey,
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 35.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: const ButtonStyle(
                              elevation: MaterialStatePropertyAll(3),
                              backgroundColor:
                              MaterialStatePropertyAll(Colors.blueAccent)),
                          child: const Text(
                            'Add Product',
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
