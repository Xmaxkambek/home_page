import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2874F0),
          //appBar
          title: appBar(),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            //category
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
            //space allocation horizontal
            Container(
              height: 2,
              width: double.infinity,
              color: const Color.fromARGB(255, 231, 225, 225),
            ),
            Expanded(
              child: Row(
                children: [
                  //filters
                  filters(),
                  //space allocation vertical
                  Container(
                    height: double.infinity,
                    width: 2,
                    color: const Color.fromARGB(255, 231, 225, 225),
                  ),
                  //hoomeFootwear
                  homeFootwear()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

//appBAr
  Widget appBar() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Image.asset('img/leading.png'),
        ),
        const Expanded(
          flex: 3,
          child: SizedBox(
            height: 40,
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                filled: true,
                hintText: 'Shoes',
                fillColor: Colors.white,
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Center(
                child: Container(
                  height: 40,
                  width: 70,
                  color: Colors.white,
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'Become a Seller',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: const Text(
                  'More',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.shopping_cart),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Cart',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget filters() {
    return Expanded(
      flex: 1,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(height: 10),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                )
              ],
            ),
            const SizedBox(height: 20),

            Container(
              alignment: Alignment.center,
              height: 40,
              width: 100,
              color: Colors.grey.shade400,
              child: const Text('X Min-\$30+'),
            ),
            //CATEGORIES
            const Text('CATEGORIES'),
            //CATEGORIES
            Row(
              children: const [
                Icon(
                  Icons.arrow_back_ios,
                  size: 10,
                ),
                Text('Footwear')
              ],
            ),
            const Text('GENDER'),
            Row(
              children: [
                Checkbox(
                  value: true,
                  onChanged: (value) {},
                ),
                Placeholder(
                  child: Image.asset('img/Assured.png'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget homeFootwear() {
    return Expanded(flex: 5, child: Column(children: const []));
  }
}
