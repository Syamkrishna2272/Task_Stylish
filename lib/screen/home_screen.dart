  
import 'package:flutter/material.dart';
import 'package:task1/widgets/deal_widget.dart';
import 'package:task1/widgets/feature_row_widget.dart';
import 'package:task1/widgets/flat_heal_widget.dart';
import 'package:task1/widgets/gridview_widget.dart';
import 'package:task1/widgets/items_widget.dart';
import 'package:task1/widgets/listview_widget.dart';
import 'package:task1/widgets/main_image_widget.dart';
import 'package:task1/widgets/new_arrival_widget.dart';
import 'package:task1/widgets/search_widget.dart';
import 'package:task1/widgets/special_offer_widget.dart';
import 'package:task1/widgets/sponserd_widget.dart';
import 'package:task1/widgets/text_widget.dart';
import 'package:task1/widgets/trending_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  void onTappeditem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        actions: [
          Padding(
            padding: EdgeInsets.all(screenWidth * 0.02),
            child: Image.asset(
              'asset/images/2289_SkVNQSBGQU1PIDEwMjgtMTE2 1.png',
              height: screenHeight * 0.05,
              width: screenHeight * 0.05,
            ),
          ),
        ],
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.15),
              child: Image.asset(
                'asset/images/Group 34010.png',
                height: screenHeight * 0.05,
                width: screenHeight * 0.05,
              ),
            ),
            SizedBox(
              width: screenWidth * 0.03,
            ),
            TextWidget(
                text: "Stylish",
                colors: const Color(0xFF4392F9),
                font: screenWidth * 0.06,
                weight: FontWeight.w500)
          ],
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchContainer(
                  screenWidth: screenWidth, screenHeight: screenHeight),
              SizedBox(height: screenHeight * 0.01),
              Featureclass(screenHeight: screenHeight),
              SizedBox(height: screenHeight / 35),
              ListviewWidget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              MainImageWidget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              SizedBox(height: screenHeight * 0.05),
              DealWidget(screenHeight: screenHeight, screenWidth: screenWidth),
              SizedBox(height: screenHeight * 0.05),
              GridWidget(screenWidth: screenWidth, screenHeight: screenHeight),
              SpecialOfferWidget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              SizedBox(height: screenHeight / 100),
              FlatandHealsWidget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              TrendingWidget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              ItemsWidget(screenHeight: screenHeight, screenWidth: screenWidth),
              Container(
                height: screenHeight * 0.3,
                width: screenWidth * 0.9,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('asset/images/Mask Group (1).png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.amber),
              ),
              NewArrivalWIdget(
                  screenHeight: screenHeight, screenWidth: screenWidth),
              SponserdWidget(screenWidth: screenWidth)
            ],
          ),
        ),
      ),
      bottomNavigationBar: Stack(
        children: [
          BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Wish  list"),
              BottomNavigationBarItem(icon: SizedBox.shrink(), label: ""),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search), label: "Search"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "Settings")
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.red,
            unselectedItemColor: Colors.black,
            onTap: onTappeditem,
          ),
          const Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: CircleAvatar(
              radius: 35,
              backgroundColor: Colors.white,
              child: Icon(Icons.shopping_cart_outlined),
            ),
          ))
        ],
      ),
    );
  }
}
