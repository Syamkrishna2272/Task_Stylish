import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class ItemsWidget extends StatelessWidget {
  const ItemsWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(screenWidth / 50),
      child: SizedBox(
        height: screenHeight / 3,
        child: FutureBuilder<List<Map<String, String>>>(
          future: fetchGridimageandtitle2(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
              return const Center(child: Text('No images kitttiyll found.'));
            } else {
              return GridView.builder(
                  scrollDirection: Axis.horizontal,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    childAspectRatio: screenWidth / 248,
                    crossAxisCount: 1,
                    mainAxisSpacing: .1,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(screenWidth / 67),
                      child: Container(
                        width: screenWidth * 0.03,
                        height: screenHeight * 0.08,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: screenHeight / 5.5,
                              width: screenWidth,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          snapshot.data![index]['image']!),
                                      fit: BoxFit.cover)),
                            ),
                            SizedBox(width: screenWidth * 0.02),
                            TextWidget(
                                maxline: true,
                                text: snapshot.data![index]['title']!,
                                colors: Colors.black,
                                font: screenWidth / 30,
                                weight: FontWeight.normal),
                            TextWidget(
                                text: "₹1500",
                                colors: Colors.black,
                                font: screenWidth / 26,
                                weight: FontWeight.w500),
                            Row(
                              children: [
                                TextWidget(
                                    text: "₹2499",
                                    colors: Colors.black45,
                                    font: screenWidth / 26,
                                    linethrough: true,
                                    weight: FontWeight.w300),
                                SizedBox(width: screenWidth / 30),
                                TextWidget(
                                    text: "₹40%off",
                                    colors: Colors.red,
                                    font: screenWidth / 28,
                                    weight: FontWeight.w300),
                              ],
                            ),
                            Row(
                              children: List.generate(5, (index) {
                                return Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: screenWidth / 25,
                                );
                              }),
                            )
                          ],
                        ),
                      ),
                    );
                  });
            }
          },
        ),
      ),
    );
  }
}

Future<List<Map<String, String>>> fetchGridimageandtitle2() async {
  List<Map<String, String>> allItems = [];

  CollectionReference itemsCollection =
      FirebaseFirestore.instance.collection('gridviewimage2');

  try {
    QuerySnapshot querySnapshot = await itemsCollection.get();

    for (var doc in querySnapshot.docs) {
      String image = doc['image'];
      String title = doc['title'];

      allItems.add({
        'image': image,
        'title': title,
      });
    }

    return allItems;
  } catch (e) {
    print("Error fetching images and titles: $e");
    return [];
  }
}
