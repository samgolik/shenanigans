import 'package:flutter/material.dart';

class BetCard extends StatelessWidget {
  final String title;
  final String description;
  final String wager;
  final String toPay;

  const BetCard({
    Key? key,
    required this.title,
    required this.description,
    required this.wager,
    required this.toPay,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 327,
      padding: const EdgeInsets.fromLTRB(6, 8, 50, 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(2),
        border: Border.all(color: Colors.black),
        boxShadow: [
          BoxShadow(
            color: Colors.black,
            offset: Offset(6, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontFamily: 'Archivo',
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 7),
          Text(
            description,
            style: TextStyle(
              fontFamily: 'Archivo',
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Colors.black,
            ),
          ),
          SizedBox(height: 14),
          Text(
            'Wager: $wager To Pay: $toPay',
            style: TextStyle(
              fontFamily: 'Archivo',
              fontSize: 12,
              fontWeight: FontWeight.w700,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
