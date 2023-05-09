import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stt_mgt/providers/product.dart';

class ProductItem extends StatelessWidget {
  // final String id;
  // final String title;
  // final String imageUrl;
  // const ProductItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    // final product = Provider.of<Product>(context);
    return Consumer<Product>(
      builder: (context, product, child) => ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: GridTile(
          footer: GridTileBar(
              backgroundColor: Colors.black87,
              leading: IconButton(
                  color: Colors.deepOrangeAccent,
                  onPressed: () {
                    product.toggleFavorite();
                  },
                  icon: Icon(product.isFavorite
                      ? Icons.favorite
                      : Icons.favorite_border)),
              trailing: IconButton(
                  color: Colors.deepOrangeAccent,
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart)),
              title: Text(
                product.title,
                textAlign: TextAlign.center,
              )),
          child: Image.network(product.imageUrl),
        ),
      ),
    );
  }
}
