class MyProductModel {
  String name;
  int price;
  String photo;
  MyProductModel({
    this.name,
    this.price,
    this.photo,
  });

  factory MyProductModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MyProductModel(
      name: map['name'] ?? '',
      price: map['price'] ?? 0,
      photo: map['photo'] ?? '',
    );
  }
}
