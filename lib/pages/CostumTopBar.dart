import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';

class CostumTopBar extends StatefulWidget {
  const CostumTopBar({super.key});

  @override
  State<CostumTopBar> createState() => _CostumTopBarState();
}

class _CostumTopBarState extends State<CostumTopBar> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton.icon(
            onPressed: () {},
            label: const Text('Electronics',
                style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label: const Text('TVs & Appliance',
                style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label: const Text('Men', style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label: const Text('Women', style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label: const Text('Baby & Kids',
                style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label: const Text('Home & Furniture',
                style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label: const Text('Sports Books & More',
                style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label: const Text('Flights', style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down)),
        TextButton.icon(
            onPressed: () {},
            label:
                const Text('Offer Zone', style: TextStyle(color: Colors.black)),
            icon: const Icon(Icons.arrow_drop_down))
      ],
    );
  }
}