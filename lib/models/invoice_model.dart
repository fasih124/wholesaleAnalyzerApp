class Invoice {
  String? status;
  List<Data>? data;

  Invoice({this.status, this.data});

  Invoice.fromJson(Map<String, dynamic> json) {
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
  int? invoiceId;
  String? discount;
  String? netAmount;
  int? customerOrderId;

  Data({this.invoiceId, this.discount, this.netAmount, this.customerOrderId});

  Data.fromJson(Map<String, dynamic> json) {
    invoiceId = json['invoice_id'];
    discount = json['discount'];
    netAmount = json['net_amount'];
    customerOrderId = json['customer_order_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['invoice_id'] = this.invoiceId;
    data['discount'] = this.discount;
    data['net_amount'] = this.netAmount;
    data['customer_order_id'] = this.customerOrderId;
    return data;
  }
}
