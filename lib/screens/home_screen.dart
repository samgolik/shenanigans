import 'package:flutter/material.dart';
import 'package:shenanigans/widgets/bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(child: Text('hi')), bottomNavigationBar: BottomNavBar());
  }
}
