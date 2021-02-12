import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static get defaultTheme => ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: MyColor.primary,
          height: 100.0,
        ),
        canvasColor: MyColor.background,
        fontFamily: 'Avenir',
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(
            fontSize: 30.0,
            color: MyColor.textWhite,
          ),
        ),
        primaryColor: Colors.white,
        primarySwatch: Colors.orange,
        textTheme: TextTheme(
          headline2: TextStyle(fontSize: 64.0, color: MyColor.textWhite),
          headline5: TextStyle(fontSize: 30.0),
          button: TextStyle(color: MyColor.textWhite),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
