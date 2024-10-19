import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;
  final List<Widget> widgetOptions;

  const BottomNavBar({
    super.key,
    required this.selectedIndex,
    required this.onItemTapped,
    required this.widgetOptions,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          onItemTapped(2); // Set to "Bet" when floating button is pressed
        },
        child: const Icon(Icons.add),
        backgroundColor: Colors.purple,
        elevation: 8,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(30),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 1,
                blurRadius: 8,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: BottomAppBar(
            height: 40,
            shadowColor: Colors.black.withOpacity(1.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    onItemTapped(0);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.groups),
                  onPressed: () {
                    onItemTapped(1);
                  },
                ),
                const SizedBox(width: 40), // Space for the floating button
                IconButton(
                  icon: const Icon(Icons.history),
                  onPressed: () {
                    onItemTapped(3);
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.settings),
                  onPressed: () {
                    onItemTapped(4);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
