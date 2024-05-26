import 'dart:convert';
import "package:http/http.dart" as http;
import '../models/seller_model.dart';

class SellerController {
  static const String _baseUrl = 'http://localhost:3000/sellers';
  late String _sellerID;
  Seller? _currentSeller;

  Future<bool> login(String email, String password) async {
    try {
      final response = await http.post(
        Uri.parse(
            'http://localhost:3300/sellers/login'), // Replace with your actual URL
        headers: {'Content-Type': 'application/json'},
        body: jsonEncode({'email': email, 'password': password}),
      );

      if (response.statusCode == 200) {
        // Parse the JSON response
        var jsonResponse = jsonDecode(response.body);
        // print(jsonResponse); // Debugging: Print the response
        // Assuming the response contains a 'message' field indicating success
        if (jsonResponse.containsKey('message') &&
            jsonResponse.containsKey('data')) {
          _currentSeller = Seller.fromJson(jsonResponse);
        }
        // Handle potential null values for _currentSeller or its data
        if (_currentSeller?.data?.isNotEmpty == true) {
          _sellerID =
              _currentSeller!.data![0].sellerId.toString(); // Access sellerId
          print("seller ID is : " + _sellerID);
        } else {
          print('Error: _currentSeller or its data list is null or empty');
        }

        return jsonResponse['message'] == 'Login successful';
      } else {
        throw Exception('Failed to authenticate seller');
      }
    } catch (error) {
      print(error);
      return false;
    }
  }

  Future<List<Seller>> getSeller() async {
    final response = await http.get(Uri.parse(_baseUrl));
    if (response.statusCode == 200) {
      final data = json.decode(response.body) as List;
      return data.map((item) => Seller.fromJson(item)).toList();
    } else {
      // Handle error scenario (e.g., throw an exception)
      throw Exception('Failed to fetch products');
    }
  }
}
