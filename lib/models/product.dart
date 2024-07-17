class ProductModel {
  List images;
  String name;
  String description;
  String price;

  ProductModel(
      {required this.description,
      required this.images,
      required this.name,
      required this.price});

  factory ProductModel.fromJson(Map json) {
    return ProductModel(
        description: json['description'],
        images: json['images'],
        name: json['name'],
        price: json['price']);
  }
}
