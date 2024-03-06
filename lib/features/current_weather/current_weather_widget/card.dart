import 'package:flutter/material.dart';

class WeatherInfo extends StatelessWidget {
  final String text;
  final String subtext;
  final String imagePath;

  const WeatherInfo({
    Key? key,
    required this.text,
    required this.subtext,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 10),
        Image.asset(
          imagePath,
          height: 40,
        ),
        const SizedBox(height: 10),
        Text(
          subtext,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
