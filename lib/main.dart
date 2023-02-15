import 'package:flutter/material.dart';
  Row(
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
                    label: const Text('Men',
                        style: TextStyle(color: Colors.black)),
                    icon: const Icon(Icons.arrow_drop_down)),
                TextButton.icon(
                    onPressed: () {},
                    label: const Text('Women',
                        style: TextStyle(color: Colors.black)),
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
                    label: const Text('Flights',
                        style: TextStyle(color: Colors.black)),
                    icon: const Icon(Icons.arrow_drop_down)),
                TextButton.icon(
                    onPressed: () {},
                    label: const Text('Offer Zone',
                        style: TextStyle(color: Colors.black)),
                    icon: const Icon(Icons.arrow_drop_down))
              ],
            ),
void main() => runApp(
      const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
