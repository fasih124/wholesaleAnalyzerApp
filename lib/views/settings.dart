/*  Minor bug
If bg-color of 'body:' is changed,
it applies to it but due to scroll behavior,
the space for keyboard pop-up is set to white by default
leaving that area white-colored.
To make that invisible, keep the screen bg-color white. (Big Brain Time)
*/

import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  TextEditingController setFullname = TextEditingController();
  TextEditingController setEmail = TextEditingController();
  TextEditingController setPassword = TextEditingController();
  TextEditingController setPhone = TextEditingController();
  TextEditingController setAddress = TextEditingController();

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
                'Account & Settings',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'Profile',
                style: TextStyle(
                  fontSize: 20,
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
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              size: 28,
              Icons.edit_outlined,
              color: Colors.blueAccent,
            ),
          )
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
            Center(
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.transparent,
                    width: 1,
                  ),
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.blueAccent,
                  maxRadius: 60,
                  backgroundImage: AssetImage('assets/hitler.jpg'),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Hitler Bin Ladin',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
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
                      textAlign: TextAlign.left,
                      controller: setFullname,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: 'Hitler Bin Ladin', //fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
                      'Email',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.left,
                      controller: setEmail,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: 'hitler@gmail.com', //fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
                      'Password',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      obscureText: true,
                      textAlign: TextAlign.left,
                      controller: setPassword,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: '*********', //fetch from DB
                        hintStyle: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
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
                      'Phone Number',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    TextField(
                      textAlign: TextAlign.left,
                      controller: setPhone,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: '1234325345', //fetch from DB
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
                      controller: setAddress,
                      decoration: const InputDecoration(
                        contentPadding: EdgeInsets.fromLTRB(
                            20, 5, 20, 5), //controls the field size
                        hintText: 'Germany', //fetch from DB
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
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 35.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  elevation: MaterialStatePropertyAll(3),
                                  backgroundColor:
                                      MaterialStatePropertyAll(Colors.red)),
                              child: const Text(
                                'Logout',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),

                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 35.0),
                            child: ElevatedButton(
                              onPressed: () {},
                              style: const ButtonStyle(
                                  elevation: MaterialStatePropertyAll(3),
                                  backgroundColor:
                                  MaterialStatePropertyAll(Colors.blueAccent)),
                              child: const Text(
                                'Update',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ),
                        ],
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
