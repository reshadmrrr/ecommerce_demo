import 'package:ecommerce_demo/models/product_model.dart';
import 'package:ecommerce_demo/screens/products_screen/local_widgets/product_card.dart';
import 'package:ecommerce_demo/states/cart_state.dart';
import 'package:ecommerce_demo/states/product_state.dart';
import 'package:ecommerce_demo/utils/global_widgets/appbar.dart';
import 'package:ecommerce_demo/utils/size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class MyProductsScreen extends ConsumerWidget {
  Widget build(BuildContext context, ScopedReader watch) {
    double _crossAxisSpacing = 16;
    double _mainAxisSpacing = 16;
    double _cellHeight = 250.0;
    int _crossAxisCount = 2;
    double _width = (MyScreen.width(context) -
            ((_crossAxisCount - 1) * _crossAxisSpacing)) /
        _crossAxisCount;
    double _aspectRatio =
        _width / (_cellHeight + _mainAxisSpacing + (_crossAxisCount + 1));

    AsyncValue<List<MyProductModel>> _products =
        watch(productStateFutureProvider);
    final _cardList = watch(cartListStateProvider.state);

    return Scaffold(
      appBar: buildAppBar(
          title: "PRODUCTS", context: context, counter: _cardList.length),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: _products.when(
            loading: () => Center(child: CircularProgressIndicator()),
            error: (error, stack) => Center(child: Text(error.toString())),
            data: (value) {
              return GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: _aspectRatio,
                    crossAxisCount: _crossAxisCount,
                    crossAxisSpacing: _crossAxisSpacing,
                    mainAxisSpacing: _mainAxisSpacing,
                  ),
                  itemCount: value.length,
                  itemBuilder: (context, index) {
                    return MyProductCard(
                      name: value[index].name,
                      price: value[index].price,
                      photo: value[index].photo,
                      onTap: () =>
                          context.read(cartListStateProvider).add(value[index]),
                    );
                  });
            }),
      ),
    );
  }
}
