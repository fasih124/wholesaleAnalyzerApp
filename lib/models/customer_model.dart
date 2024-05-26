class Customer {
  String? status;
  List<Data>? data;

  Customer({this.status, this.data});

  Customer.fromJson(Map<String, dynamic> json) {
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
  int? customerId;
  String? name;
  String? address;
  String? phoneNumber;
  int? sellerId;

  Data(
      {this.customerId,
      this.name,
      this.address,
      this.phoneNumber,
      this.sellerId});

  Data.fromJson(Map<String, dynamic> json) {
    customerId = json['customer_id'];
    name = json['name'];
    address = json['address'];
    phoneNumber = json['phone_number'];
    sellerId = json['seller_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['customer_id'] = this.customerId;
    data['name'] = this.name;
    data['address'] = this.address;
    data['phone_number'] = this.phoneNumber;
    data['seller_id'] = this.sellerId;
    return data;
  }
}
