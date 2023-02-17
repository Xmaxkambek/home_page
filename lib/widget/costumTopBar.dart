import 'package:flutter/material.dart';

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
        costumbar('Electronics'),
        costumbar('TVs & Appliance'),
        costumbar('Men'),
        costumbar('Women'),
        costumbar('Baby & Kids'),
        costumbar('Home & Furniture'),
        costumbar('Sports Books & More'),
        costumbar('Flights'),
        costumbar('Offer Zone'),
      ],
    );
  }

  Widget costumbar(String text) {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          Text(text, style: const TextStyle(color: Colors.black)),
          const Icon(Icons.keyboard_arrow_down, color: Colors.black),
        ],
      ),
    );
  }
}
