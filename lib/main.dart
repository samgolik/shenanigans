import 'package:flutter/material.dart';
import 'package:shenanigans/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Your App Title', // Add a title for your app
      home: HomeScreen(),
    );
  }
}
