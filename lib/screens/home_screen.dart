import 'package:flutter/material.dart';
import 'package:shenanigans/screens/bet_screen.dart';
import 'package:shenanigans/screens/history_screen.dart';
import 'package:shenanigans/widgets/bottom_nav_bar.dart';
import 'package:shenanigans/widgets/top_app_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  static List<Widget> _widgetOptions = <Widget>[
    HistoryScreen(),
    BetScreen(),
    Center(child: Text('Bet')),
    Center(child: Text('History')),
    Center(child: Text('Settings')),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
        widgetOptions: _widgetOptions,
      ),
    );
  }
}
