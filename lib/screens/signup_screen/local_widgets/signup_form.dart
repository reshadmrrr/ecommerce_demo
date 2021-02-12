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
        TextField(
          onChanged: (val) => _password = val.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.white),
            labelText: "Password",
          ),
        ),
        TextField(
          onChanged: (val) => _email = val.trim(),
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.lock_outline_rounded, color: Colors.white),
            labelText: "Confirm Password",
          ),
        ),
        RaisedButton(
          onPressed: _signUp,
          child: Text("SIGN UP"),
        ),
      ],
    );
  }

  void _signUp() {
    print("Email: $_email, Password: $_password");
  }
}
