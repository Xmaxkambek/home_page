import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeFootwear extends StatefulWidget {
  const HomeFootwear({super.key});

  @override
  State<HomeFootwear> createState() => _HomeFootwearState();
}

class _HomeFootwearState extends State<HomeFootwear> {
  List<String> itemSize = [
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
    'Size 6, 7, 8, 9, 10',
  ];

  List<String> itemPrice = [
    '\$599    \$1,999  70% off',
    '\$399    \$999  60% off',
    '\$299    \$999  70% off',
    '\$579    \$999  65% off',
    '\$259    \$1,559  70% off',
    '\$559    \$1999  60% off',
    '\$559    \$1,879  78% off',
    '\$499    \$850  70% off',
    '\$599    \$2000  20% off',
    '\$299    \$999  80% off',
  ];
  List<String> itemsubject = [
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
    'Lightweight, comfort...',
  ];
  List<String> item = [
    'img/1.jpeg',
    'img/2.jpeg',
    'img/3.jpeg',
    'img/4.jpeg',
    'img/5.jpeg',
    'img/6.jpeg',
    'img/7.jpeg',
    'img/8.jpeg',
    'img/9.jpeg',
    'img/10.jpeg',
    // 'img/11.jpeg',
  ];

  @override
  Widget build(BuildContext context) {
    for (int a = 0; a < item.length; a++) {
      a = a;
    }
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 380,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 19 / 20,
              // mainAxisExtent: 13,
              crossAxisCount: 4),
          itemCount: item.length,
          itemBuilder: (context, index) => Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.1),
                  offset: Offset(0.7, 1),
                  blurRadius: 7,
                  spreadRadius: 4,
                  blurStyle: BlurStyle.normal,
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: Image.asset(
                    item[index],
                    fit: BoxFit.fill,
                  ),
                ),
                const SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(itemsubject[index],
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text(itemPrice[index],
                          style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 5),
                      Text(
                        itemSize[index],
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
