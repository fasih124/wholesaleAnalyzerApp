import 'dart:convert';
import "package:http/http.dart" as http;
import '../models/invoice_model.dart';

class InvoiceController {
  static const String _baseUrl = 'http://localhost:3300/invoices';

  Future<List<Invoice>> getInvoice() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return [Invoice.fromJson(data)];
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
