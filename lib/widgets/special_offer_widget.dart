import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';


class Special_Offer_Widget extends StatelessWidget {
  const Special_Offer_Widget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenHeight / 75),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10)),
        height: screenHeight / 7.5,
        width: screenWidth / 1.1,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth / 65),
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                      image:
                          AssetImage('asset/images/Rectangle 56.png'),
                      fit: BoxFit.contain),
                ),
                height: screenHeight / 2,
                width: screenWidth / 4,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth / 68),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                      text: "Special Offers 😱",
                      colors: Colors.black,
                      font: screenHeight / 35,
                      weight: FontWeight.w400),
                  TextWidget(
                      text: "We make sure you get the",
                      colors: Colors.black,
                      font: screenHeight / 48,
                      weight: FontWeight.w300),
                  TextWidget(
                      text: "offer you need at best prices",
                      colors: Colors.black,
                      font: screenHeight / 48,
                      weight: FontWeight.w300),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}