import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class Main_image_widget extends StatelessWidget {
   Main_image_widget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;
  final CollectionReference firedata =
      FirebaseFirestore.instance.collection('datas');
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()async {
      await  firedata.add({'name':'shyam'});
      },
      child: Container(
        height: screenHeight * 0.3,
        width: screenWidth * 0.9,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage('asset/images/Rectangle 48.png'),
                fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(15),
            color: const Color(0xFFFD6E87)),
        child: Padding(
          padding: EdgeInsets.all(screenWidth / 87),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextWidget(
                  text: "50-40% OFF",
                  colors: Colors.white,
                  font: screenWidth / 12,
                  weight: FontWeight.w600),
              TextWidget(
                  text: "Now in (product)",
                  colors: Colors.white,
                  font: screenWidth / 20,
                  weight: FontWeight.w300),
              TextWidget(
                  text: "All colours",
                  colors: Colors.white,
                  font: screenWidth / 20,
                  weight: FontWeight.w300),
              Container(
                decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 239, 135, 152),
                    border: Border.all(
                      color: Colors.white,
                      width: 1.5,
                    ),
                    borderRadius: BorderRadius.circular(8)),
                height: screenHeight / 18,
                width: screenWidth / 3.2,
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
            ],
          ),
        ),
      ),
    );
  }
}
