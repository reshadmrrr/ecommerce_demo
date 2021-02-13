class MyProductModel {
  int id;
  String name;
  int price;
  String photo;
  MyProductModel({
    this.id,
    this.name,
    this.price,
    this.photo,
  });

  factory MyProductModel.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return MyProductModel(
      id: map['id'] ?? 0,
      name: map['name'] ?? '',
      price: map['price'] ?? 0,
      photo: map['photo'] ?? '',
    );
  }
}
