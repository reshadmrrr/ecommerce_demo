import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String name;
  final int price;
  final int itemCount;
  final String photo;
  final Function onPressed;
  const MyListTile({
    Key key,
    this.name,
    this.price,
    this.photo,
    this.onPressed,
    this.itemCount = 0,
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
        child: Image.network(
          photo,
          fit: BoxFit.cover,
        ),
      ),
      title: Row(
        children: [
          Text(name),
          Text(
            " x $itemCount",
            style: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
      tileColor: MyColor.textWhite,
      subtitle: Text("\$$price"),
      trailing: IconButton(
        icon: Icon(Icons.cancel_outlined),
        onPressed: onPressed,
      ),
    );
  }
}
