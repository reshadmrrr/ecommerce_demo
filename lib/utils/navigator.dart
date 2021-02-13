import 'package:flutter/material.dart';

class MyNavigator {
  static void push({BuildContext context, Widget screen}) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => screen));
  }

  // static void pushAndRemoveUntil({BuildContext context, Widget screen}) {
  //   Navigator.of(context).pushAndRemoveUntil(
  //       MaterialPageRoute(builder: (context) => screen), (route) => false);
  // }

  static void pushReplacement({BuildContext context, Widget screen}) {
    Navigator.of(context)
        .pushReplacement(MaterialPageRoute(builder: (context) => screen));
  }
}
