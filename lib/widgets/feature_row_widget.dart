import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task1/widgets/text_widget.dart';

class feature_class extends StatelessWidget {
  const feature_class({
    super.key,
    required this.screenHeight,
  });

  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextWidget(
            text: "All Featured",
            colors: Colors.black,
            font: screenHeight * 0.03,
            weight: FontWeight.w600),
        SizedBox(width: screenHeight * 0.02),
        Container(
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          height: screenHeight * 0.05,
          width: screenHeight * 0.09,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextWidget(
                  text: "Sort",
                  colors: Colors.black,
                  font: screenHeight * 0.02,
                  weight: FontWeight.normal),
              const Icon(Icons.swap_vert)
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.05,
          width: screenHeight * 0.09,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextWidget(
                  text: "Sort",
                  colors: Colors.black,
                  font: screenHeight * 0.02,
                  weight: FontWeight.normal),
              const Icon(Icons.filter_alt_outlined)
            ],
          ),
        )
      ],
    );
  }
}
