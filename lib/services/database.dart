import 'dart:convert';

import 'package:ecommerce_demo/models/product_model.dart';
import 'package:ecommerce_demo/utils/api.dart';
import "package:http/http.dart" as http;

class MyDataBase {
  static Future<List<MyProductModel>> getProducts() async {
    List<MyProductModel> output = [];
    try {
      final response = await http.get(Api.def);
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        for (var data in body['data']) {
          output.add(MyProductModel.fromMap(data));
        }
      }
    } catch (e) {
      print(e);
    }
    print(output.length);
    return output;
  }
}
