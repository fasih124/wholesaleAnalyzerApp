import 'package:flutter/material.dart';

import '../controllers/customer_controller.dart';
import '../utility/customer_info.dart';

class UpdateCustomer extends StatefulWidget {
  const UpdateCustomer({super.key});

  @override
  State<UpdateCustomer> createState() => _UpdateCustomerState();
}

class _UpdateCustomerState extends State<UpdateCustomer> {
  @override
  Widget build(BuildContext context) {
    final customerDetails =
        ModalRoute.of(context)?.settings.arguments as CustomerInfo?;
    TextEditingController updateFullname =
        TextEditingController(text: customerDetails?.name);
    // TextEditingController updateEmail = TextEditingController(text: );
    TextEditingController updatePhone =
        TextEditingController(text: customerDetails?.phone);
    TextEditingController updateAddress =
        TextEditingController(text: customerDetails?.address);
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
                'Update Customer',
                style: TextStyle(
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
          SizedBox(
            width: 40,
          )
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
            const Icon(
              Icons.person_outline,
              color: Colors.green,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Full Name',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      // initialValue: "Enter your name",
                      textAlign: TextAlign.left,
                      controller: updateFullname,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        // hintText: 'Hitler Bin Ladin', //fetch from DB

                        hintStyle: TextStyle(
                          fontSize: 14,
                          // fontWeight: FontWeight.bold,
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
                    // const SizedBox(
                    //   height: 20,
                    // ),
                    // const Text(
                    //   'Email',
                    //   style: TextStyle(
                    //     fontSize: 20,
                    //   ),
                    // ),
                    // TextField(
                    //   textAlign: TextAlign.left,
                    //   controller: updateEmail,
                    //   decoration: const InputDecoration(
                    //     contentPadding: EdgeInsets.fromLTRB(
                    //         20, 5, 20, 5), //controls the field size
                    //     hintText: 'hitler@gmail.com', //fetch from DB
                    //     hintStyle: TextStyle(
                    //       fontSize: 14,
                    //       // fontWeight: FontWeight.bold,
                    //       color: Colors.black,
                    //     ),
                    //     filled: true,
                    //     fillColor: Color.fromRGBO(206, 206, 206, 0.5),
                    //
                    //     enabledBorder: OutlineInputBorder(
                    //         borderSide: BorderSide(
                    //           color: Colors.transparent,
                    //         ),
                    //         borderRadius:
                    //             BorderRadius.all(Radius.circular(32))),
                    //
                    //     focusedBorder: OutlineInputBorder(
                    //       borderSide: BorderSide(
                    //         color: Colors.transparent,
                    //       ),
                    //       borderRadius: BorderRadius.all(Radius.circular(32)),
                    //     ),
                    //     //labelText: 'User Name',
                    //   ),
                    // ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.left,
                      controller: updatePhone,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        // hintText: '1234325345', //fetch from DB
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
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Address',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.left,
                      controller: updateAddress,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        // hintText: 'Germany', //fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 16,
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
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 35.0),
                        child: ElevatedButton(
                          onPressed: () {
                            CustomerController controller =
                                CustomerController();
                            controller
                                .updateCustomer(
                                    customerDetails!.id,
                                    updateFullname.text,
                                    updatePhone.text,
                                    updateAddress.text)
                                .then((success) {
                              if (success) {
                                // Navigate to the seller dashboard or another page upon successful login
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text('update successful')));
                                Navigator.pushReplacementNamed(context,
                                    '/customers'); // Example navigation
                              } else {
                                // Handle login failure
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(content: Text('Login failed')));
                              }
                            });
                            print(updateFullname.text);
                            print(updateAddress.text);
                            print(updatePhone.text);
                            print(customerDetails!.id.toString());
                          },
                          style: const ButtonStyle(
                              elevation: MaterialStatePropertyAll(3),
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueAccent)),
                          child: const Text(
                            'Update info',
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
