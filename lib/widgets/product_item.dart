import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  const ProductItem(this.id, this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(
        footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: IconButton(
                color: Colors.deepOrangeAccent,
                onPressed: () {},
                icon: const Icon(Icons.favorite)),
            trailing: IconButton(
                color: Colors.deepOrangeAccent,
                onPressed: () {},
                icon: const Icon(Icons.add_shopping_cart)),
            title: Text(
              title,
              textAlign: TextAlign.center,
            )),
        child: Image.network(imageUrl),
      ),
    );
  }
}
