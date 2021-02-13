import 'package:ecommerce_demo/models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = ChangeNotifierProvider<CartListChangeNotifier>(
    (ref) => CartListChangeNotifier());

class CartListChangeNotifier extends ChangeNotifier {
  Map<MyProductModel, int> products = {};
  int cartItemCount = 0;
  CartListChangeNotifier();

  get keyList => products.keys.toList();
  int get totalPrice {
    int price = 0;
    products.forEach((key, val) => price += key.price * val);
    return price;
  }

  get valueList => products.values.toList();

  void addProduct(MyProductModel product) {
    products.update(product, (int) => products[product] += 1,
        ifAbsent: () => products[product] = 1);
    cartItemCount++;
    notifyListeners();
  }

  void deleteProduct(MyProductModel product) {
    if (products.containsKey(product) && products[product] > 0) {
      products.update(product, (int) => products[product] - 1);
      cartItemCount--;
    } else {
      products.remove(product);
    }
    notifyListeners();
  }
}
