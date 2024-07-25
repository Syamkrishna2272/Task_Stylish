import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';


class TrendingWidget extends StatelessWidget {
  const TrendingWidget({
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
          color: const Color(0xFFFD6E87)),
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
                      text: "Trending Products",
                      colors: Colors.white,
                      font: screenHeight * 0.025,
                      weight: FontWeight.normal),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.white,
                    ),
                    TextWidget(
                        text: "Last Date 29/02/22",
                        colors: Colors.white,
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
                    color: const Color(0xFFFD6E87),
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
