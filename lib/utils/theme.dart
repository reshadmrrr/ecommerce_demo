import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static get defaultTheme => ThemeData(
        buttonTheme: ButtonThemeData(
          buttonColor: MyColor.primary,
          height: 50.0,
        ),
        canvasColor: MyColor.background,
        fontFamily: 'Avenir',
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder:
              UnderlineInputBorder(borderSide: BorderSide(color: Colors.white)),
          labelStyle: TextStyle(
            fontSize: 18.0,
            color: MyColor.textWhite,
          ),
        ),
        primaryColor: Colors.orange,
        primarySwatch: Colors.deepOrange,
        textTheme: TextTheme(
            headline2: TextStyle(fontSize: 32.0, color: MyColor.textWhite),
            headline5: TextStyle(fontSize: 18.0),
            bodyText1: TextStyle(fontSize: 16.0, color: MyColor.textSecondary),
            bodyText2: TextStyle(fontSize: 14.0, color: MyColor.textWhite),
            button: TextStyle(fontSize: 18.0)),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      );
}
