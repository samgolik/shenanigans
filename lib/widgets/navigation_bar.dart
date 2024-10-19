import 'package:flutter/material.dart';

class NavigationBar extends StatelessWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 72,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.black),
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(6, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          _buildNavItem('Home',
              'https://cdn.builder.io/api/v1/image/assets/TEMP/351983d86fe430e792aefdb7ec80deab1f7a53fc6d768bf298e20238a8b83967?placeholderIfAbsent=true&apiKey=4fa072054cd64af3884c83b87551f28a'),
          _buildNavItem('Groups',
              'https://cdn.builder.io/api/v1/image/assets/TEMP/de3a33354f71cf5ae215292a67332f8b74e07b6853f0c2269c1aa4066b396bb7?placeholderIfAbsent=true&apiKey=4fa072054cd64af3884c83b87551f28a'),
          const SizedBox(width: 61),
          _buildNavItem('History',
              'https://cdn.builder.io/api/v1/image/assets/TEMP/5ad1c9a1b971ea0b23d7f922bd36f2abde5edf68b8b2b6f339adc82e6bba018c?placeholderIfAbsent=true&apiKey=4fa072054cd64af3884c83b87551f28a'),
          _buildNavItem('Settings',
              'https://cdn.builder.io/api/v1/image/assets/TEMP/5386056457e4eab566189d8d435403695a6de5255c99ea2f425e9b915f4c1e85?placeholderIfAbsent=true&apiKey=4fa072054cd64af3884c83b87551f28a'),
          _buildCenterButton(),
        ],
      ),
    );
  }

  Widget _buildNavItem(String label, String iconUrl) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.network(
          iconUrl,
          width: 24,
          height: 24,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontFamily: 'Archivo',
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ],
    );
  }

  Widget _buildCenterButton() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 16,
      child: Column(
        children: [
          Container(
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              color: const Color(0xFFC4A1FF),
              shape: BoxShape.circle,
              border: Border.all(color: Colors.black),
            ),
            child: Center(
              child: Image.network(
                'https://cdn.builder.io/api/v1/image/assets/TEMP/80ccd9034d99754d3af3ab2f382d1fe92c89f5aa76e5c35ebd2941daaa27bcf2?placeholderIfAbsent=true&apiKey=4fa072054cd64af3884c83b87551f28a',
                width: 32,
                height: 32,
                fit: BoxFit.contain,
              ),
            ),
          ),
          const SizedBox(height: 7),
          Text(
            'Bet',
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
