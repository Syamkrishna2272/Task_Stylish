import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:task1/widgets/text_widget.dart';

class Listview_Widget extends StatelessWidget {
  const Listview_Widget({
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
      // child: ListView.builder(
      //     scrollDirection: Axis.horizontal,
      //     itemCount: 10,
      //     itemBuilder: (context, index) {
      //       return Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Column(
      //           mainAxisSize: MainAxisSize.min,
      //           children: [
      //             CircleAvatar(
      //                 maxRadius: screenHeight * 0.05,
      //                 backgroundImage: NetworkImage(
      //                     "https://firebasestorage.googleapis.com/v0/b/task1-6bc61.appspot.com/o/00000535.jpg?alt=media&token=e7ef4955-f6d2-424a-836e-a3d1c3372dd9")

      //                 //  const AssetImage(
      //                 //     'asset/images/ayo-ogunseinde-6W4F62sN_yI-unsplash.jpg'),
      //                 ),
      //             const SizedBox(
      //               height: 4,
      //             ),
      //             Text("item $index")
      //           ],
      //         ),
      //       );
      //     }),
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
