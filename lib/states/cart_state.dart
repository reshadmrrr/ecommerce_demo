import 'package:ecommerce_demo/models/product_model.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartProvider = ChangeNotifierProvider<CartListChangeNotifier>(
    (ref) => CartListChangeNotifier());

class CartListChangeNotifier extends ChangeNotifier {
  Map<MyProductModel, int> products = {};
  int cartItemCount = 0;
  CartListChangeNotifier();
  get all => products;

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

  // int get totalPrice {
  //   int sum = 0;
  //   products.forEach((item) => sum += item.price);
  //   return sum;
  // }

  int currentItemCount(MyProductModel product) {
    return products[product];
  }

  // void add(MyProductModel product) {
  //   products = [...state, product];
  //   mapItems();
  // }

  // void delete(MyProductModel product) {
  //   if (items.containsKey(product.id) && items[product.id] > 0) {
  //     items.update(product.id, (int) => items[product.id] - 1);
  //   } else {
  //     items.remove(product.id);
  //   }
  //   bool deleted = false;
  //   products = [];
  // }
  void deleteProduct(MyProductModel product) {
    if (products.containsKey(product) && products[product] > 0) {
      products.update(product, (int) => products[product] - 1);
    } else {
      products.remove(product);
    }
    cartItemCount--;
    // products = products;
    notifyListeners();
  }

  // int itemCount(MyProductModel product) {
  //   return items[product.id];
  // }

  // void mapItems() {
  //   items.clear();
  //   products.forEach((item) =>
  //       items[item.id] = items[item.id] != null ? items[item.id] + 1 : 0);
  // }
}
