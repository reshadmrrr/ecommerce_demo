import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static get defaultTheme => ThemeData(
        fontFamily: 'Avenir',
        primaryColor: MyColor.primary,
        primarySwatch: MyColor.secondary,
        textTheme: TextTheme(
          headline2: TextStyle(fontSize: 64.0),
          headline5: TextStyle(fontSize: 30.0),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
