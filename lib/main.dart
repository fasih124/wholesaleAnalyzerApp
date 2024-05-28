import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/views/add_customer.dart';
import 'package:wholesale_analyzer_project/views/customer_details.dart';
import 'package:wholesale_analyzer_project/views/customers.dart';
import 'package:wholesale_analyzer_project/views/home.dart';
import 'package:wholesale_analyzer_project/views/products.dart';
import 'package:wholesale_analyzer_project/views/settings.dart';
import 'views/log_in.dart';
import 'views/sign_up.dart';
import 'views/splash.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const String _title = 'Asasa Keeper';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      // home: const Splash(), //,const Products(title: _title,),
      home: const Home(title: _title),
      // home: const Customers(title: _title),
      routes: {
        '/signup': (context) => const SignUp(title: _title),
        '/login': (context) => const LogIn(title: _title),
        '/product': (context) => const Products(title: _title),
        '/home': (context) => const Home(title: _title),
        '/settings': (context) => const Settings(),
        '/customers': (context) => const Customers(
              title: _title,
            ),
        '/customerDetails': (context) => const CustomerDetails(),
        '/addCustomer': (context) => const AddCustomer(),
      },
    );
  }
}
