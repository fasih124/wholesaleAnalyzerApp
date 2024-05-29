class Seller {
  String? message;
  List<Data>? data;

  Seller({this.message, this.data});
  Seller.fromJson(Map<String, dynamic> json) {
    message = json['message'];
    if (json['data'] != null) {
      data = <Data>[]; // Initialize the data list
      print(json['data']!.toString());
      try {
        json['data'].forEach((v) {
          data!.add(Data.fromJson(
              v as Map<String, dynamic>)); // Cast v to Map<String, dynamic>
        });
      } catch (err) {
        print(err);
      }
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Data {
  int? sellerId;
  String? sellerName;
  String? address;
  String? email;
  String? password;
  String? phoneNumber;
  String? profilePicPath;

  Data(
      {this.sellerId,
      this.sellerName,
      this.address,
      this.email,
      this.password,
      this.phoneNumber,
      this.profilePicPath});

  Data.fromJson(Map<String, dynamic> json) {
    sellerId = json['seller_id'];
    sellerName = json['seller_name'];
    address = json['address'];
    email = json['email'];
    password = json['password'];
    phoneNumber = json['phone_number'];
    profilePicPath = json['profile_pic_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['seller_id'] = this.sellerId;
    data['seller_name'] = this.sellerName;
    data['address'] = this.address;
    data['email'] = this.email;
    data['password'] = this.password;
    data['phone_number'] = this.phoneNumber;
    data['profile_pic_path'] = this.profilePicPath;
    return data;
  }
}
