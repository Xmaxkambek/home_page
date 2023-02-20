import 'package:flutter/material.dart';
import '../widget/costumTopBar.dart';
import '../widget/filters.dart';
import '../widget/homeProducts.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const CostumTopBar(),
        const SizedBox(
          height: 2,
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            MainDrawer(),
            ProductOverView(),
          ],
        ),
      ],
    );
  }
}