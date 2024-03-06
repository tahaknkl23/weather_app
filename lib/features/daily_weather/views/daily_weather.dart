import 'package:flutter/material.dart';
import 'package:weather_app/config/items/app_colors.dart';
import 'package:weather_app/config/items/linear_colors.dart';
import 'package:weather_app/features/homepage/views/homepage.dart';
import 'package:weather_app/features/daily_weather/daily_weather_widget/container.dart';

class Day extends StatefulWidget {
  const Day({Key? key}) : super(key: key);

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 112, 72, 190),
      body: Container(
        decoration: const BoxDecoration(gradient: LinearColors.relaxColortwo),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: const [
                  Text(
                    "North America",
                    style: TextStyle(color: AppColors.white),
                  ),
                  Text(
                    "Max: 24°   Min:18°",
                    style: TextStyle(color: AppColors.white),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 170, bottom: 16),
              child: Text(
                "7-Days Forecasts",
                style: TextStyle(fontSize: 25, color: AppColors.white),
              ),
            ),
            const SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.chevron_left),
                    onPressed: () {},
                  ),
                  const SizedBox(width: 2),
                  const CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "assets/pictures/yagmur.png"),
                  const SizedBox(width: 2),
                  const CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "assets/pictures/yagmur.png"),
                  const SizedBox(width: 2),
                  const CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "assets/pictures/yagmur.png"),
                  const SizedBox(width: 2),
                  const CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "assets/pictures/yagmur.png"),
                  const SizedBox(width: 2),
                  IconButton(
                    icon: const Icon(Icons.chevron_right),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              child: Container(
                padding: const EdgeInsets.all(50),
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearColors.relaxColortwo),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: const [
                        Text(
                          'AIR QUALITY',
                          style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    const Text(
                      '3-Low Health Risk',
                      style: TextStyle(color: AppColors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const Divider(color: AppColors.white),
                    Row(
                      children: const [
                        Text(
                          'See more',
                          style: TextStyle(color: AppColors.white),
                        ),
                        SizedBox(width: 5), // Aralarında boşluk
                        Icon(Icons.chevron_right, color: AppColors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearColors.relaxColortwo),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/pictures/Star 1.png"),
                          const Text('SUNRISE', style: TextStyle(color: AppColors.white)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text('5:28 AM', style: TextStyle(color: AppColors.white)),
                      const SizedBox(height: 10),
                      const Text('Sunset: 7.25PM', style: TextStyle(color: AppColors.white)),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), gradient: LinearColors.relaxcolor),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("assets/pictures/Star 1.png"),
                          const Text('UV INDEX', style: TextStyle(color: AppColors.white)),
                        ],
                      ),
                      const SizedBox(height: 10),
                      const Text('4', style: TextStyle(color: AppColors.white)),
                      const SizedBox(height: 10),
                      const Text('Moderate', style: TextStyle(color: AppColors.white)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          IconButton(
            iconSize: 40,
            icon: const Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Anasayfa()),
              );
            },
          ),
          const SizedBox(height: 20),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
