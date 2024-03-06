import 'package:flutter/material.dart';
import 'package:weather_app/config/items/app_colors.dart';
import 'package:weather_app/config/items/linear_colors.dart';
import 'package:weather_app/config/theme/app_theme.dart';
import 'package:weather_app/features/current_weather/views/current_weather.dart';

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key}) : super(key: key);

  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearColors.relaxcolor,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 300, child: Image.asset("assets/pictures/weathertree.png")),
              Column(
                children: const [
                  Text(
                    "Weather",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontFamily: 'Poppins',
                    ),
                  ),
                  Text(
                    "Forecasts",
                    style: TextStyle(
                      color: AppColors.amber,
                      fontSize: 32,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: const MaterialStatePropertyAll(AppColors.amber),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    const Size(200, 60),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const SonrakiSayfa()),
                  );
                },
                child: const Text(
                  "Get Start",
                  style: AppTheme.weatherTextStyle24,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
