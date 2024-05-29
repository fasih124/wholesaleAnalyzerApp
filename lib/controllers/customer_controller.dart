import 'dart:convert';
import "package:http/http.dart" as http;
import 'package:wholesale_analyzer_project/controllers/seller_controller.dart';
import '../models/customer_model.dart';

class CustomerController {
  String sellerID = SellerController.getsellerID();
  static const String _baseUrl = 'http://localhost:3300/customers';

  Future<List<Customer>> getCustomer() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return [Customer.fromJson(data)];
    } else {
      throw Exception('Failed to fetch products');
    }
  }

  // print("************************************************");
  // print("************************************************");
  // print("************************************************");
  // print("************************************************");
  //
  // print('$_baseUrl/$customerId');
  // print("************************************************");
  // print("************************************************");
  // print("************************************************");
  // print("************************************************");
  // print("************************************************");
  // print("************************************************");

  // Future<bool> updateCustomer(
  //     int customerId, String name, String phone, String address) async {
  //   final url = Uri.parse('$_baseUrl/$customerId');
  //
  //   // Prepare request body with updated data
  //   final Map<String, dynamic> body = {
  //     'name': name,
  //     'phone_number': phone,
  //     'address': address,
  //     'seller_id': sellerID,
  //   };
  //
  //   final response = await http.put(url, body: json.encode(body));
  //
  //   if (response.statusCode == 200) {
  //     print('update customer: Successfully');
  //     return true;
  //     // final Map<String, dynamic> data = json.decode(response.body);
  //     // return Customer.fromJson(data); // Parse response and return updated customer
  //   } else {
  //     print('Failed to update customer: Status code ${response.statusCode}');
  //     return false; // Indicate unsuccessful update
  //   }
  // }

  Future<bool> updateCustomer(
      int customerId, String name, String phone, String address) async {
    final url = Uri.parse('$_baseUrl/$customerId');

    // Prepare request body with updated data
    final Map<String, dynamic> body = {
      'name': name,
      'phone_number': phone,
      'address': address,
      'seller_id': sellerID,
    };

    // Convert data to URL-encoded format
    String urlEncodedBody = '';
    body.forEach((key, value) {
      final encodedKey = Uri.encodeQueryComponent(key);
      final encodedValue = Uri.encodeQueryComponent(value.toString());
      urlEncodedBody += '$encodedKey=$encodedValue&';
    });

    // Remove the trailing '&'
    urlEncodedBody = urlEncodedBody.substring(0, urlEncodedBody.length - 1);

    final headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    final response =
        await http.put(url, body: urlEncodedBody, headers: headers);

    // final headers = {'Content-Type': 'application/x-www-form-urlencoded'};
    // final response = await http.put(url, body: urlEncodedBody);

    if (response.statusCode == 200) {
      print('update customer: Successfully');
      return true;
    } else {
      print('Failed to update customer: Status code ${response.statusCode}');
      return false;
    }
  }
}
// {name: Alice , phone_number: +1321098765, address: 789 Oak St, Anytown, CA 12345, seller_id: 1}
