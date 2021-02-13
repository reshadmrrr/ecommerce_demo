import 'package:ecommerce_demo/models/product_model.dart';
import 'package:ecommerce_demo/screens/cart_screen/local_widgets/list_tile.dart';
import 'package:ecommerce_demo/states/cart_state.dart';
import 'package:ecommerce_demo/utils/color.dart';
import 'package:ecommerce_demo/utils/global_widgets/appbar.dart';
import 'package:ecommerce_demo/utils/global_widgets/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyCartScreen extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    final _cart = watch(cartProvider);
    List<MyProductModel> _allItems = _cart.keyList;
    List<int> _allItemsCount = _cart.valueList;

    return Scaffold(
      appBar: buildAppBar(
        title: "CHECK OUT",
        counter: "${_cart.cartItemCount}",
        context: context,
      ),
      body: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                  itemCount: _allItems.length,
                  itemBuilder: (context, index) {
                    var item = _allItems[index];
                    if (_allItemsCount[index] > 0) {
                      return MyListTile(
                        name: item.name,
                        photo: item.photo,
                        price: item.price,
                        itemCount: _allItemsCount[index],
                        onPressed: () =>
                            context.read(cartProvider).deleteProduct(item),
                      );
                    } else
                      return null;
                  }),
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
                "\$${context.read(cartProvider).totalPrice}",
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
