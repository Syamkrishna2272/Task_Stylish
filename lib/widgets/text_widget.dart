import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final Color colors;
  final dynamic font;
  final bool? maxline;
  final FontWeight weight;
  final dynamic linethrough;

  const TextWidget(
      {super.key,
      required this.text,
      required this.colors,
      required this.font,
      required this.weight,
      this.maxline,
      this.linethrough});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final screenWidth = MediaQuery.of(context).size.width;
    // ignore: unused_local_variable
    final screenHeight = MediaQuery.of(context).size.height;
    return Text(
      maxLines: (maxline == true) ? 10 : 1,
      text,
      style: TextStyle(
          color: colors,
          fontSize: font,
          fontWeight: weight,
          decoration: (linethrough == true)
              ? TextDecoration.lineThrough
              : TextDecoration.none),
    );
  }
}
