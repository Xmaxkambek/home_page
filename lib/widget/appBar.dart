import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextEditingController _controller = TextEditingController();

class MainAppBar extends StatelessWidget {
  const MainAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraint) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Text('Flipkart',
                  style:
                      GoogleFonts.fugazOne(fontSize: 28, color: Colors.white)),
              Row(
                children: [
                  Text(
                    'Explore',
                    style: GoogleFonts.fugazOne(
                        fontSize: 15, color: Colors.white70),
                  ),
                  Text(
                    'Plus✙',
                    style: GoogleFonts.fugazOne(
                        fontSize: 15, color: Colors.yellow),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            width: constraint.maxWidth * 0.01,
          ),
          SizedBox(
            width: constraint.maxWidth * 0.45,
            height: 35,
            child: TextField(
              // textAlign: TextAlign.center,
              // style: TextStyle(fontSize: 12),
              controller: _controller,
              decoration: InputDecoration(
                  suffix: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.search,
                      color: Colors.blue,
                    ),
                  ),
                  hintText: 'Search for products, brands and more',
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none),
            ),
          ),
          SizedBox(
            width: constraint.maxWidth * 0.01,
          ),
          FilledButton(
            onPressed: () {},
            style: FilledButton.styleFrom(
              padding: const EdgeInsets.only(
                  left: 30, right: 30, top: 18, bottom: 18),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
            ),
            child: const Text(
              'Login',
              style: TextStyle(color: Colors.blue),
            ),
          ),
          SizedBox(
            width: constraint.maxWidth * 0.01,
          ),
          TextButton(
            onPressed: () {},
            child: const Text(
              'Become a Seller',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(
            width: constraint.maxWidth * 0.01,
          ),
          TextButton.icon(
            label: const Text(
              'More',
              style: TextStyle(color: Colors.white),
            ),
            onPressed: () {},
            icon: const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: constraint.maxWidth * 0.01,
          ),
          TextButton.icon(
            icon: const Icon(Icons.shopping_cart, color: Colors.white),
            onPressed: () {},
            label: const Text(
              'Shop',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}

