import 'package:flutter/material.dart';
import '../widget/appBar.dart';
import '../widget/costumTopBar.dart';
import '../widget/filters.dart';
import '../widget/homeProducts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget line(double height, double width) {
    return Container(
      height: height,
      width: width,
      color: const Color.fromARGB(255, 231, 225, 225),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff2874F0),
          //appBar
          title: const AppBarWidget(),
        ),
        body: Column(
          children: [
            const SizedBox(height: 10),
            //category
            const CostumTopBar(),
            line(2, double.infinity),
            Expanded(
              child: Row(
                children: [
                  //filters
                  const Filters(), //space allocation vertical
                  line(double.infinity, 2),
                  //hoomeFootwear
                  const HomePage(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
