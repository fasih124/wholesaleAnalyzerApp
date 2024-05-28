import 'dart:convert';
import "package:http/http.dart" as http;
import '../models/customer_model.dart';

class CustomerController {
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
}
