import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/products.dart';
import 'grit_item.dart';

class ProductOverView extends StatelessWidget {
  const ProductOverView({super.key});

  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context).prod;
    return Card(
      child: SizedBox(
        height: MediaQuery.of(context).size.width,
        width: MediaQuery.of(context).size.width * 0.8,
        child: GridView.builder(
          itemCount: 8,
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 280,
            childAspectRatio: 0.95,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) => ChangeNotifierProvider(
            create: (context) => productData[index],
            child: GritItem(),
          ),
        ),
      ),
    );
  }
}