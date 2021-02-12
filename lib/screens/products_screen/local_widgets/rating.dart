import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

class MyRating extends StatelessWidget {
  final int rating;

  const MyRating({
    Key key,
    @required this.rating,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: buildRow(rating),
      ),
    );
  }

  List<Widget> buildRow(rating) {
    List<Widget> row = [];
    for (int i = 0; i < rating; ++i)
      row.add(Padding(
        padding: EdgeInsets.only(right: 4.0),
        child: Icon(Icons.star, size: 16.0, color: MyColor.primary),
      ));
    for (int i = rating; i < 5; ++i)
      row.add(Padding(
        padding: EdgeInsets.only(right: 4.0),
        child: Icon(Icons.star, size: 16.0, color: MyColor.secondary),
      ));
    return row;
  }
}
