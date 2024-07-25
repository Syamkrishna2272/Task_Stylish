import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:task1/screen/home_screen.dart';

void main() async{
   WidgetsFlutterBinding.ensureInitialized();
    await Firebase.initializeApp(

      options: const FirebaseOptions(
          apiKey: "AIzaSyCFZUvykw2pc58TL3PYJyT9MpRS1zYy1OI",
          appId: "1:312171061130:android:e1318f0fad3e3ef6e07273",
          messagingSenderId: "312171061130",
          projectId: "task1-6bc61",
          storageBucket: "task1-6bc61.appspot.com",
          androidClientId: "com.example.task1"));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}
