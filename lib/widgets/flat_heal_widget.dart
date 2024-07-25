import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class Flat_and_Heals_Widget extends StatelessWidget {
  const Flat_and_Heals_Widget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenHeight / 50),
      child: Container(
        height: screenHeight / 4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Container(
              width: screenWidth / 25,
              height: screenHeight / 4,
              color: const Color.fromARGB(217, 241, 215, 137),
            ),
            SizedBox(
              width: screenWidth / 2.2,
              height: screenHeight / 2,
              // color: Colors.black,
              child: Stack(
                children: [
                  Positioned(
                      left: screenHeight / 100,
                      right: screenWidth / 5.4,
                      child: Image.asset(
                        width: screenWidth / 25,
                        height: screenHeight / 3.8,
                        'asset/images/Group 33732.png',
                        fit: BoxFit.contain,
                      )),
                  Positioned(
                      left: screenWidth / 10,
                      top: screenHeight / 20,
                      child: Image.asset(
                        width: screenHeight / 4.8,
                        'asset/images/Rectangle 55.png',
                        fit: BoxFit.cover,
                      ))
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  constraints: BoxConstraints(
                    maxWidth: screenWidth / 2,
                  ),
                  child: TextWidget(
                    text: "Flat and Heels",
                    colors: Colors.black,
                    font: screenHeight / 38,
                    weight: FontWeight.w400,
                  ),
                ),
                TextWidget(
                  text: "Stand a chance to get rewarded",
                  colors: Colors.black,
                  font: screenWidth / 32,
                  weight: FontWeight.w300,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: const Color(0xFFF83758),
                      border: Border.all(
                        color: Colors.white,
                        width: 1.5,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                  height: screenHeight * 0.05,
                  width: screenHeight * 0.14,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                          text: "Visit Now",
                          colors: Colors.white,
                          font: screenHeight * 0.02,
                          weight: FontWeight.normal),
                      const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
