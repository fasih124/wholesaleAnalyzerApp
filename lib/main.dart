import 'package:flutter/material.dart';
import 'package:wholesale_analyzer_project/models/customer_model.dart';
import 'package:wholesale_analyzer_project/views/add_customer.dart';
import 'package:wholesale_analyzer_project/views/add_invoice.dart';
import 'package:wholesale_analyzer_project/views/add_product.dart';
import 'package:wholesale_analyzer_project/views/invoice_details.dart';
import 'package:wholesale_analyzer_project/views/orders.dart';
import 'package:wholesale_analyzer_project/views/product_details.dart';
import 'package:wholesale_analyzer_project/views/updateInvoice.dart';
import 'package:wholesale_analyzer_project/views/update_customer.dart';
import 'package:wholesale_analyzer_project/views/customer_details.dart';
import 'package:wholesale_analyzer_project/views/customers.dart';
import 'package:wholesale_analyzer_project/views/home.dart';
import 'package:wholesale_analyzer_project/views/products.dart';
import 'package:wholesale_analyzer_project/views/settings.dart';
import 'package:wholesale_analyzer_project/views/update_product.dart';
import 'package:wholesale_analyzer_project/views/widgets/customer_card_widget.dart';
import 'package:wholesale_analyzer_project/views/widgets/product_card_widget.dart';
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
      //theme: ThemeData.dark(useMaterial3: true),
      title: _title,
      home:
      Splash(
        // title: _title,
      ),
      routes: {
        '/signup': (context) => const SignUp(title: _title,),
        '/login': (context) => const LogIn(title: _title,),
        '/product': (context) => const Products(title: _title),
        '/settings': (context) => const Settings(),
        '/customers': (context) => const Customers(title: _title,),
        '/customerDetails': (context) => const CustomerDetails(),
        '/addCustomer': (context) => const AddCustomer(),
        '/updateCustomer': (context) => const UpdateCustomer(),
        '/productDetails': (context) => const ProductDetails(),
        '/addProduct': (context) => const AddProduct(),
        '/updateProduct': (context) => const UpdateProduct(),
        '/orders': (context) => const Orders(title: _title,),
        '/invoiceDetails': (context) => const InvoiceDetails(),
        '/addInvoice': (context) => const AddInvoice(),
        '/updateInvoice': (context) => const UpdateInvoice(),
      },
    );
  }
}
