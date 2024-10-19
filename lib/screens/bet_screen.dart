import 'package:flutter/material.dart';
import 'package:shenanigans/widgets/bet_form.dart';
import 'package:shenanigans/widgets/header.dart';

class BetScreen extends StatelessWidget {
  const BetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFE4E4E4),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.fromLTRB(26, 68, 26, 34),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Header(),
                SizedBox(height: 52),
                BetForm(),
                SizedBox(height: 134),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
