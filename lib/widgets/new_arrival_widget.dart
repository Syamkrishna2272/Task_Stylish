import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class New_Arrival_WIdget extends StatelessWidget {
  const New_Arrival_WIdget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight / 10,
      width: screenWidth / 1.1,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(screenWidth * 0.01),
                  child: TextWidget(
                      text: "New Arrivals",
                      colors: Colors.black,
                      font: screenHeight * 0.025,
                      weight: FontWeight.normal),
                ),
                Row(
                  children: [
                    TextWidget(
                        text: "Summer'25 Collections",
                        colors: Colors.black,
                        font: screenHeight * 0.02,
                        weight: FontWeight.w300),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFFF83758),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                height: screenHeight * 0.06,
                width: screenHeight * 0.14,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextWidget(
                        text: "View all",
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
            )
          ],
        ),
      ),
    );
  }
}