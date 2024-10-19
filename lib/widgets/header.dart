import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Bet',
          style: TextStyle(
            fontFamily: 'Archivo Black',
            fontSize: 40,
            fontWeight: FontWeight.w400,
            color: Colors.black,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
            border: Border.all(color: Colors.black),
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(6, 4),
              ),
            ],
          ),
          child: const Row(
            children: [
              Text(
                '169 bits',
                style: TextStyle(
                  fontFamily: 'Archivo',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 8),
              // Image.network(
              //     '/Users/sam/Desktop/Programming/shenanigans/IMG-9.svg',
              //     scale: 0.2),
            ],
          ),
        ),
      ],
    );
  }
}
