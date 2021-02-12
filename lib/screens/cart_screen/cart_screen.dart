import 'package:ecommerce_demo/utils/color.dart';
import 'package:ecommerce_demo/utils/global_widgets/appbar.dart';
import 'package:ecommerce_demo/utils/global_widgets/button.dart';
import 'package:flutter/material.dart';

import 'local_widgets/list_tile.dart';

class MyCartScreen extends StatefulWidget {
  @override
  _MyCartScreenState createState() => _MyCartScreenState();
}

class _MyCartScreenState extends State<MyCartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("CHECK OUT", context),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView(
                children: [
                  MyListTile(),
                  MyListTile(),
                  MyListTile(),
                  MyListTile(),
                ],
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "Total",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline4,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: Text(
                "\$192.00",
                textAlign: TextAlign.center,
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(color: MyColor.primary),
              ),
            ),
            MyButton(
              title: "CHECKOUT",
              onPressed: () {},
            ),
            SizedBox(height: 32.0),
            Text(
              "Want to shop more?",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyText1,
            ),
            SizedBox(height: 32.0)
          ],
        ),
      ),
    );
  }
}
