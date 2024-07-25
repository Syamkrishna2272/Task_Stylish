import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';


class DealWidget extends StatelessWidget {
  const DealWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.1,
      width: screenWidth * 0.9,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: const Color(0xFF4392F9)),
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
                      text: "Deal of the Day",
                      colors: Colors.white,
                      font: screenHeight * 0.025,
                      weight: FontWeight.normal),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.alarm,
                      color: Colors.white,
                    ),
                    TextWidget(
                        text: "22h 55m 20s remaining",
                        colors: Colors.white,
                        font: screenHeight * 0.02,
                        weight: FontWeight.w300)
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.all(screenWidth * 0.04),
              child: Container(
                decoration: BoxDecoration(
                    color: const Color(0xFF4392F9),
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
