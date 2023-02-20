import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/homeModel.dart';


class GritItem extends StatelessWidget {
  const GritItem({super.key});

  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context);
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/product-detail');
      },
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                onPressed: () {
                  product.toggleFavoriteStatus();
                },
                icon: Icon(
                    product.favorite ? Icons.favorite : Icons.favorite_border,color: Colors.red,),
              ),
            ],
          ),
          SizedBox(
            height: 150,
            width: 200,
            child: Image.network(
              product.imageUrl,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      product.company,
                      style: const TextStyle(color: Colors.grey),
                    ),
                    Text(
                      '${product.character.substring(0, 20)}...',
                      maxLines: 1,
                    ),
                    Text('${product.price}'),
                    Text(product.size),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}