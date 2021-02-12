import 'package:ecommerce_demo/screens/products_screen/products_screen.dart';
import 'package:ecommerce_demo/utils/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E-commerce Demo',
      theme: MyTheme.defaultTheme,
      home: MyProductsScreen(),
    );
  }
}
