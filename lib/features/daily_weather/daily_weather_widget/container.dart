import 'package:flutter/material.dart';

class CustomInfoCard extends StatelessWidget {
  final String text;
  final String subtext;
  final String imagePath;

  const CustomInfoCard({
    Key? key,
    required this.text,
    required this.subtext,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        gradient: const LinearGradient(
          colors: [Color.fromARGB(255, 82, 13, 222), Color.fromARGB(255, 145, 142, 227), Color.fromARGB(255, 249, 240, 247)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
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
      ),
    );
  }
}
