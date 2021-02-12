import 'package:ecommerce_demo/screens/cart_screen/cart_screen.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(String title, BuildContext context) => AppBar(
      elevation: 0.0,
      leading: title == "PRODUCTS" ? Icon(Icons.menu) : null,
      title: Text(title),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: IconButton(
            icon: Icon(Icons.shopping_cart_rounded),
            onPressed: () {
              if (title == "PRODUCTS")
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => MyCartScreen()));
            },
          ),
        )
      ],
    );
