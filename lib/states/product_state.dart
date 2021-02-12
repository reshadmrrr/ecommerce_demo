import 'package:ecommerce_demo/models/product_model.dart';
import 'package:ecommerce_demo/services/database.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final productStateFutureProvider =
    FutureProvider<List<MyProductModel>>((ref) => MyDataBase.getProducts());
