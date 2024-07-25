import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';


class Sponserd_widget extends StatelessWidget {
  const Sponserd_widget({
    super.key,
    required this.screenWidth,
  });

  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding:  EdgeInsets.all(screenWidth/28 ),
          child: TextWidget(
              text: "Sponserd",
              colors: Colors.black,
              font: screenWidth / 15,
              weight: FontWeight.w500),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset('asset/images/Mask Group (2).png'),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.all(screenWidth / 25),
              child: TextWidget(
                  text: "up to 50% Off",
                  colors: Colors.black,
                  font: screenWidth / 20,
                  weight: FontWeight.w500),
            ),
            SizedBox(
              width: screenWidth / 1.9,
            ),
            const Icon(Icons.arrow_forward_ios_rounded)
          ],
        )
      ],
    );
  }
}