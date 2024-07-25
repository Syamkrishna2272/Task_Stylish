import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class ListviewWidget extends StatelessWidget {
  const ListviewWidget({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
  });

  final double screenHeight;
  final double screenWidth;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      height: screenHeight * 0.16,
      width: screenWidth * 0.9,
      color: Colors.white,
      child: FutureBuilder<List<Map<String, String>>>(
        future: fetchAllImagesAndTitles(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No items found.'));
          } else {
            return ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: snapshot.data!.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CircleAvatar(
                        maxRadius: screenHeight * 0.05,
                        backgroundImage:
                            NetworkImage(snapshot.data![index]['image']!),
                      ),
                      const SizedBox(height: 8),
                      TextWidget(
                          text: snapshot.data![index]['title']!,
                          colors: Colors.black,
                          font: screenWidth / 25,
                          weight: FontWeight.w300)
                    ],
                  ),
                );
              },
            );
          }
        },
      ),
    ));
  }
}

Future<List<Map<String, String>>> fetchAllImagesAndTitles() async {
  List<Map<String, String>> allItems = [];

  CollectionReference itemsCollection =
      FirebaseFirestore.instance.collection('listviewimages');

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
