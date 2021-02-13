import 'package:ecommerce_demo/screens/products_screen/products_screen.dart';
import 'package:ecommerce_demo/utils/global_widgets/button.dart';
import 'package:ecommerce_demo/utils/navigator.dart';
import 'package:flutter/material.dart';

class MySignupForm extends StatefulWidget {
  @override
  _MySignupFormState createState() => _MySignupFormState();
}

class _MySignupFormState extends State<MySignupForm> {
  String _email, _password;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        TextField(
          onChanged: (val) => _email = val.trim(),
          decoration: InputDecoration(
            prefixIcon:
                Icon(Icons.person_outline_outlined, color: Colors.white),
            labelText: "Username",
          ),
        ),
        SizedBox(height: 16.0),
        TextField(
          onChanged: (val) => _password = val.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.white),
            labelText: "Password",
          ),
        ),
        SizedBox(height: 16.0),
        TextField(
          onChanged: (val) => _password = _password == val ? val.trim() : null,
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.white),
            labelText: "Confirm Password",
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 40.0),
          child: MyButton(
            onPressed: _signUp,
            title: "SIGN UP",
          ),
        ),
      ],
    );
  }

  void _signUp() {
    if (_password != null) print("Email: $_email, Password: $_password");
    MyNavigator.pushReplacement(context: context, screen: MyProductsScreen());
  }
}
