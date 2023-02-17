// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../models/products.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeFootwearState();
}

class _HomeFootwearState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 300,
            mainAxisExtent: 250,
            // mainAxisSpacing: 170,
            crossAxisSpacing: 15,
            // childAspectRatio: 19 / 20,
          ),
          itemCount: 3,
          itemBuilder: (context, index) => Container(
            height: 200,
            width: 200,
            child: Center(child: Text('salom')),
          ),
        ),
      ),
    );
  }
}
