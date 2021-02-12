import 'package:ecommerce_demo/screens/signup_screen/local_widgets/signup_form.dart';
import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MySignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.secondary,
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(50),
            child: Column(
              children: [
                Text(
                  "Sign Up",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(height: 50.0),
                MySignupForm(),
                InkWell(
                  onTap: () {},
                  child: Text("Have An Account? Sign In"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
