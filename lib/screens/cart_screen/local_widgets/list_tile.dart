import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  const MyListTile({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(
        vertical: 8.0,
        horizontal: 16.0,
      ),
      leading: Container(
        height: 50.0,
        width: 50.0,
        color: MyColor.secondary,
      ),
      title: Text("Hat for Women"),
      tileColor: MyColor.textWhite,
      subtitle: Text("\$50"),
      trailing: IconButton(
        icon: Icon(Icons.cancel_outlined),
        onPressed: () {},
      ),
    );
  }
}
