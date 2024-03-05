import 'package:flutter/material.dart';
import 'package:weather_app/anasayfa.dart';
import 'package:weather_app/tekrarkod/container.dart';

class Day extends StatefulWidget {
  const Day({Key? key}) : super(key: key);

  @override
  State<Day> createState() => _DayState();
}

class _DayState extends State<Day> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 112, 72, 190),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 59, 4, 171),
              Color.fromARGB(255, 33, 31, 80),
              Color.fromARGB(255, 188, 168, 204),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Text(
                    "North America",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                  Text(
                    "Max: 24°   Min:18°",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 170, bottom: 16),
              child: Text(
                "7-Days Forecasts",
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            SizedBox(height: 20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    icon: Icon(Icons.chevron_left),
                    onPressed: () {},
                  ),
                  SizedBox(width: 2),
                  CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "resimler/yagmur.png"),
                  SizedBox(width: 2),
                  CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "resimler/yagmur.png"),
                  SizedBox(width: 2),
                  CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "resimler/yagmur.png"),
                  SizedBox(width: 2),
                  CustomInfoCard(text: "Mon", subtext: "19°C", imagePath: "resimler/yagmur.png"),
                  SizedBox(width: 2),
                  IconButton(
                    icon: Icon(Icons.chevron_right),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              child: Container(
                padding: EdgeInsets.all(50),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(255, 82, 13, 222),
                      Color.fromARGB(255, 145, 142, 227),
                      Color.fromARGB(255, 76, 13, 153),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Row(
                      children: [
                        Text(
                          'AIR QUALITY',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Text(
                      '3-Low Health Risk',
                      style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Divider(color: Colors.white),
                    Row(
                      children: [
                        Text(
                          'See more',
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(width: 5), // Aralarında boşluk
                        Icon(Icons.chevron_right, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 82, 13, 222),
                        Color.fromARGB(255, 145, 142, 227),
                        Color.fromARGB(255, 76, 13, 153),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("resimler/Star 1.png"),
                          Text('SUNRISE', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text('5:28 AM', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10),
                      Text('Sunset: 7.25PM', style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
                Container(
                  width: 150,
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      colors: [
                        Color.fromARGB(255, 82, 13, 222),
                        Color.fromARGB(255, 145, 142, 227),
                        Color.fromARGB(255, 76, 13, 153),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Image.asset("resimler/Star 1.png"),
                          Text('UV INDEX', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                      SizedBox(height: 10),
                      Text('4', style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10),
                      Text('Moderate', style: TextStyle(color: Colors.white)),
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
            icon: Icon(Icons.menu),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Anasayfa()),
              );
            },
          ),
          SizedBox(height: 20),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
