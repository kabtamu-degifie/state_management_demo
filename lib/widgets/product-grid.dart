import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stt_mgt/providers/products.dart';
import 'package:stt_mgt/widgets/product-item.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;

    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10),
      itemBuilder: (ctx, i) =>
          ProductItem(products[i].id, products[i].title, products[i].imageUrl),
      itemCount: products.length,
    );
  }
}
