class Product {
  String? id;
  String? name;
  String? description;
  double? price;
  int? quantity;
  String? categoryId;

  Product({
    this.id,
    this.name,
    this.description,
    this.price,
    this.quantity,
    this.categoryId,
  });

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    quantity = json['quantity'];
    categoryId = json['categoryId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['quantity'] = quantity;
    data['categoryId'] = categoryId;
    return data;
  }
}
