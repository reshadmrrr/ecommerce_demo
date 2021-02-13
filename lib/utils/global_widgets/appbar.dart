import 'package:ecommerce_demo/screens/cart_screen/cart_screen.dart';
import 'package:ecommerce_demo/utils/color.dart';
import 'package:flutter/material.dart';

AppBar buildAppBar(
        {String title, BuildContext context, String counter = "0"}) =>
    AppBar(
      elevation: 0.0,
      leading: title == "PRODUCTS" ? Icon(Icons.menu) : null,
      title: Text(title),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart_rounded),
                onPressed: () {
                  if (title == "PRODUCTS")
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => MyCartScreen()));
                },
              ),
              Positioned(
                right: 1,
                top: 1,
                child: Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    color: MyColor.textWhite,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  constraints: BoxConstraints(
                    minHeight: 14,
                    minWidth: 14,
                  ),
                  child: Text(
                    counter,
                    style: TextStyle(
                      color: MyColor.textSecondary,
                      fontSize: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
