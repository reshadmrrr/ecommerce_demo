import 'package:ecommerce_demo/models/product_model.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final cartListStateProvider = StateNotifierProvider<CartListStateNotifier>(
    (ref) => CartListStateNotifier([]));

class CartListStateNotifier extends StateNotifier<List<MyProductModel>> {
  CartListStateNotifier(List<MyProductModel> state) : super(state);

  get all => state;
  int get length => state.length;

  int get totalPrice {
    int sum = 0;
    for (var item in state) sum += item.price;
    return sum;
  }

  void add(MyProductModel product) {
    state = [...state, product];
  }

  void delete(MyProductModel product) {
    state = [
      for (var item in state)
        if (item != product) item,
    ];
  }
}
