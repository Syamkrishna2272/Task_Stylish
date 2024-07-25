import 'package:flutter/material.dart';

class search_container extends StatelessWidget {
  const search_container({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
  });

  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(screenWidth * 0.02),
        child: Container(
          color: Colors.white,
          child: const TextField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),
                hintText: "Search any Product..",
                hintStyle: TextStyle(fontWeight: FontWeight.w300),
                suffixIcon: Icon(Icons.mic),
                border: InputBorder.none),
          ),
        ));
  }
}
