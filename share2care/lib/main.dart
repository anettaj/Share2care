import 'package:flutter/material.dart';
import 'package:share2care/Pages/Loader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme:ThemeData(
        scaffoldBackgroundColor: Colors.transparent, // Set the scaffold background to transparent
      ),
      home: Loader()
    );
  }
}
