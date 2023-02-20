import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  const MainDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: 240,
        height: MediaQuery.of(context).size.height,
        child: ListView(
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
            const Divider(),
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
            const Divider(),
            const SizedBox(height: 25),
            const Padding(
              padding: EdgeInsets.all(5.0),
              child: Text('GENDER'),
            ),
            const Divider(),
            const SizedBox(height: 25),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                SizedBox(
                  width: 100,
                  child: Image.network(
                      'https://static-assets-web.flixcart.com/fk-p-linchpin-web/fk-cp-zion/img/fa_62673a.png'),
                ),
              ],
            ),
            const Divider(),
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
            const Divider(),
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