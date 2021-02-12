import 'package:ecommerce_demo/utils/theme.dart';
import 'package:flutter/material.dart';

import 'screens/signup_screen/signup_screen.dart';

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
      home: MySignupScreen(),
    );
  }
}
