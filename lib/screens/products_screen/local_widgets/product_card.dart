import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

import 'rating.dart';

class MyProductCard extends StatelessWidget {
  const MyProductCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColor.textWhite,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(color: MyColor.secondary),
            Text(
              "Jackets for Men",
              style: Theme.of(context).textTheme.bodyText1,
            ),
            Text("\$50",
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(color: MyColor.primary)),
            MyRating(rating: 3),
          ],
        ),
      ),
    );
  }
}
