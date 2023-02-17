import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  Widget line(double height, double width) {
    return Container(
      height: height,
      width: width,
      color: const Color.fromARGB(255, 231, 225, 225),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  Text(
                    'Filters',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                  Text(
                    'CREAL ALL',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(width: 15)
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                alignment: Alignment.center,
                height: 40,
                width: 100,
                color: Colors.grey.shade400,
                child: const Text('X Min-\$30+'),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            line(2, double.infinity),
            //CATEGORIES
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('CATEGORIES'),
            ),
            const SizedBox(height: 10),
            //CATEGORIES
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  Text('Footwear')
                ],
              ),
            ),
            line(1, double.infinity),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('GENDER'),
            ),
            line(2, double.infinity),
            const SizedBox(height: 25),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                Container(
                  child: Image.asset('img/Assured.png'),
                ),
              ],
            ),
            line(1, double.infinity),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('PRICE'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                border(' Min       '),
                border(' \$300+   '),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  Text('BRAND'),
                  Spacer(),
                  Icon(Icons.arrow_drop_down_rounded)
                ],
              ),
            ),
            const TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.clear),
                  hintText: 'Clear all',
                  border: InputBorder.none),
            ),
            const TextField(
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: 'Search Brand',
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      onChanged: (value) {},
                    ),
                    const Text('addi')
                  ],
                ),
                row('ADIDAS'),
                row('Allin Solly'),
                row('asics'),
                row('Bata'),
                row('BRUTON'),
              ],
            ),
            TextButton(
              onPressed: () {},
              child: const Text('2107 MORE  '),
            ),
            line(1, double.infinity),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: const [
                  Text('CUSTOMER RATINGS'),
                  Icon(Icons.arrow_drop_down_rounded)
                ],
              ),
            ),
            Column(
              children: [
                row('4 * &  above'),
                row('3 * &  above'),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget row(String text) {
    return Row(
      children: [
        Checkbox(
          value: false,
          onChanged: (value) {},
        ),
        Text(text)
      ],
    );
  }

  Widget border(String labeltext) {
    return Container(
      alignment: Alignment.centerRight,
      height: 20,
      width: 95,
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(color: Colors.grey),
          right: BorderSide(color: Colors.grey),
          bottom: BorderSide(color: Colors.grey),
          left: BorderSide(color: Colors.grey),
        ),
      ),
      child: Row(
        children: [
          Text(labeltext),
          const Icon(Icons.arrow_drop_down),
        ],
      ),
    );
  }
}
