import 'package:ecommerce_demo/utils/size.dart';
import 'package:flutter/material.dart';

import 'local_widgets/product_card.dart';

class MyProductsScreen extends StatefulWidget {
  @override
  _MyProductsScreenState createState() => _MyProductsScreenState();
}

class _MyProductsScreenState extends State<MyProductsScreen> {
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
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            childAspectRatio: _aspectRatio,
            crossAxisCount: _crossAxisCount,
            crossAxisSpacing: _crossAxisSpacing,
            mainAxisSpacing: _mainAxisSpacing,
          ),
          children: [
            MyProductCard(),
            MyProductCard(),
            MyProductCard(),
            MyProductCard(),
            MyProductCard(),
            MyProductCard(),
            MyProductCard(),
            MyProductCard(),
          ],
        ),
      ),
    );
  }
}
