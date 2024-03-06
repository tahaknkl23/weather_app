import 'package:flutter/material.dart';
import 'package:weather_app/config/extensions/context_extension.dart';
import 'package:weather_app/config/items/app_colors.dart';
import 'package:weather_app/config/items/linear_colors.dart';
import 'package:weather_app/config/theme/app_theme.dart';
import 'package:weather_app/features/current_weather/current_weather_widget/card.dart';
import 'package:weather_app/features/daily_weather/views/daily_weather.dart';

class SonrakiSayfa extends StatefulWidget {
  const SonrakiSayfa({Key? key}) : super(key: key);

  @override
  State<SonrakiSayfa> createState() => _SonrakiSayfaState();
}

class _SonrakiSayfaState extends State<SonrakiSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: AppTheme.relaxColorTwoDecoration,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: context.dynamicHeight(0.01)),
              Image.asset(
                "assets/pictures/weathertwo.png",
                height: 140,
              ),
              const SizedBox(height: 10),
              const Text(
                "19°",
                style: AppTheme.weatherTextStyle,
              ),
              const SizedBox(height: 10),
              Column(
                children: const [
                  Text("Precipitations", style: AppTheme.weatherTextStyle),
                  Text("Max: 24°   Min:18°", style: AppTheme.weatherTextStyle),
                ],
              ),
              const SizedBox(height: 10),
              Image.asset(
                "assets/pictures/House.png",
                height: 140,
              ),
              SizedBox(
                height: 210,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearColors.relaxColortwo,
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "Today",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "July 21",
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          color: AppColors.white,
                          thickness: 2,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: const [
                                  WeatherInfo(
                                    text: "Text 1",
                                    subtext: "Subtext 1",
                                    imagePath: "assets/pictures/sagınak.png",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  WeatherInfo(
                                    text: "Text 2",
                                    subtext: "Subtext 2",
                                    imagePath: "assets/pictures/sagınak.png",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  WeatherInfo(
                                    text: "Text 3",
                                    subtext: "Subtext 3",
                                    imagePath: "assets/pictures/sagınak.png",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: const [
                                  WeatherInfo(
                                    text: "Text 4",
                                    subtext: "Subtext 4",
                                    imagePath: "assets/pictures/sagınak.png",
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: const Icon(Icons.location_on),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.menu),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Day()),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
