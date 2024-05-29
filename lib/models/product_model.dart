class Product {
  String? status;
  List<Data>? data;

  Product({this.status, this.data});

  Product.fromJson(Map<String, dynamic> json) {
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

  @override
  String toString() {
    return 'Product{status: $status, data: $data}';
  }
}

class Data {
  int? productId;
  String? productName;
  String? productPrice;
  String? description;
  String? category;
  String? productImagePath;
  int? currentInventory;
  int? inventoryLimit;
  int? sellerId;

  Data(
      {this.productId,
      this.productName,
      this.productPrice,
      this.description,
      this.category,
      this.productImagePath,
      this.currentInventory,
      this.inventoryLimit,
      this.sellerId});

  Data.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    productPrice = json['product_price'];
    description = json['description'];
    category = json['category'];
    productImagePath = json['product_image_path'];
    currentInventory = json['current_inventory'];
    inventoryLimit = json['inventory_limit'];
    sellerId = json['seller_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_price'] = this.productPrice;
    data['description'] = this.description;
    data['category'] = this.category;
    data['product_image_path'] = this.productImagePath;
    data['current_inventory'] = this.currentInventory;
    data['inventory_limit'] = this.inventoryLimit;
    data['seller_id'] = this.sellerId;
    return data;
  }

  @override
  String toString() {
    return 'Data{productId: $productId, productName: $productName, productPrice: $productPrice, description: $description, category: $category, productImagePath: $productImagePath, currentInventory: $currentInventory, inventoryLimit: $inventoryLimit, sellerId: $sellerId}';
  }
}
