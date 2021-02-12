import 'dart:math';

import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

import 'rating.dart';

class MyProductCard extends StatelessWidget {
  final String name;
  final int price;
  final String photo;
  const MyProductCard({
    Key key,
    this.name,
    this.price,
    this.photo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColor.textWhite,
      elevation: 0.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              child: Container(
                height: double.maxFinite,
                child: Image.network(photo, fit: BoxFit.cover),
              ),
            ),
            Text(
              name,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text("\$$price",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: MyColor.primary)),
            MyRating(rating: Random().nextInt(5)),
          ],
        ),
      ),
    );
  }
}
