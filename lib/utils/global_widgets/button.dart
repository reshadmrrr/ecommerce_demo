import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  const MyButton({Key key, this.onPressed, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      color: MyColor.primary,
      child: Text(
        title,
        style: Theme.of(context).textTheme.button,
      ),
    );
  }
}
