import 'dart:convert';

import 'package:ecommerce_demo/models/product_model.dart';
import 'package:ecommerce_demo/screens/products_screen/local_widgets/product_card.dart';
import 'package:ecommerce_demo/utils/api.dart';
import 'package:ecommerce_demo/utils/size.dart';
import 'package:flutter/material.dart';
import "package:http/http.dart" as http;

class MyProductsScreen extends StatefulWidget {
  @override
  _MyProductsScreenState createState() => _MyProductsScreenState();
}

class _MyProductsScreenState extends State<MyProductsScreen> {
  Future<List<MyProductModel>> _products;
  @override
  Widget build(BuildContext context) {
    double _crossAxisSpacing = 16;
    double _mainAxisSpacing = 16;
    double _cellHeight = 250.0;
    int _crossAxisCount = 2;
    double _width = (MyScreen.width(context) -
            ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    double _aspectRatio =
        _width / (_cellHeight + _mainAxisSpacing + (_crossAxisCount + 1));

    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        leading: Icon(Icons.menu),
        title: Text("PRODUCTS"),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.filter_list_outlined),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: FutureBuilder(
            future: _products,
            builder: (context, snapshots) {
              return snapshots.hasData
                  ? GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        childAspectRatio: _aspectRatio,
                        crossAxisCount: _crossAxisCount,
                        crossAxisSpacing: _crossAxisSpacing,
                        mainAxisSpacing: _mainAxisSpacing,
                      ),
                      itemCount: snapshots.data.length,
                      itemBuilder: (context, index) {
                        var tmp = snapshots.data[index];
                        return MyProductCard(
                          name: tmp.name,
                          price: tmp.price,
                          photo: tmp.photo,
                        );
                      })
                  : Center(child: CircularProgressIndicator());
            }),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    _products = _getProducts();
  }

  Future<List<MyProductModel>> _getProducts() async {
    List<MyProductModel> output = [];
    try {
      final response = await http.get(Api.def);
      if (response.statusCode == 200) {
        final body = jsonDecode(response.body);
        // print(body);
        for (var data in body['data']) {
          print(data);
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
