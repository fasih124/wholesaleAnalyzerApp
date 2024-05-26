class Seller {
  String? status;
  List<Data>? data;

  Seller({this.status, this.data});

  Seller.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
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
  Null? profilePicPath;

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
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
