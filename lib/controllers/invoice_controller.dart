import 'dart:convert';
import "package:http/http.dart" as http;
import '../models/invoice_model.dart';

class InvoiceController {
  static const String _baseUrl = 'http://10.13.27.10:3300/invoices';

  Future<List<Invoice>> getInvoice() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return [Invoice.fromJson(data)];
    } else {
      throw Exception('Failed to fetch products');
    }
  }

  Future<List<Invoice>> getInvoiceById(int invoiceId) async {
    final url = Uri.parse('$_baseUrl/$invoiceId'); // Construct URL with ID
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);
      return [Invoice.fromJson(data)]; // Parse data and return Invoice object
    } else {
      print('Failed to fetch invoice with ID $invoiceId: '
          'Status code ${response.statusCode}'); // Informative error message
      return []; // Indicate unsuccessful retrieval
    }
  }
}
