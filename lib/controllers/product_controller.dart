import 'dart:convert';
import "package:http/http.dart" as http;
import '../models/product_model.dart';

class ProductController {
  static const String _baseUrl = 'http://localhost:3300/products';

  Future<List<Product>> getProduct() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final Map<String, dynamic> data = json.decode(response.body);

      return [Product.fromJson(data)];
    } else {
      throw Exception('Failed to fetch products');
    }
  }
}
