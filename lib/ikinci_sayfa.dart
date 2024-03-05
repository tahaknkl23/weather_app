import 'package:flutter/material.dart';
import 'package:weather_app/tekrarkod/card.dart';
import 'package:weather_app/ucuncu_sayfa.dart';

class SonrakiSayfa extends StatefulWidget {
  const SonrakiSayfa({Key? key}) : super(key: key);

  @override
  State<SonrakiSayfa> createState() => _SonrakiSayfaState();
}

class _SonrakiSayfaState extends State<SonrakiSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFF805BCA),
              Color(0xFFDFDEFE),
              Color(0xFFF6C6EC),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Image.asset(
                "resimler/weathertwo.png",
                height: 140,
              ),
              SizedBox(height: 10),
              Text(
                "19°",
                style: TextStyle(fontSize: 24, fontFamily: "Poppins"),
              ),
              SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    "Precipitations",
                    style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),
                  ),
                  Text(
                    "Max: 24°   Min:18°",
                    style: TextStyle(fontSize: 24, fontFamily: 'Poppins'),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Image.asset(
                "resimler/House.png",
                height: 140,
              ),
              SizedBox(
                height: 230,
                child: Card(
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  color: Colors.transparent,
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFF3E2D8F),
                          Color(0xFF805BCA),
                          Color(0xFFDFDEFE),
                          Color(0xFFF6C6EC),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
                    ),
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Today",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            Text(
                              "July 21",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.white,
                          thickness: 2,
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Expanded(
                              child: Column(
                                children: [
                                  WeatherInfo(
                                    text: "Text 1",
                                    subtext: "Subtext 1",
                                    imagePath: "resimler/sagınak.png",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  WeatherInfo(
                                    text: "Text 2",
                                    subtext: "Subtext 2",
                                    imagePath: "resimler/sagınak.png",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  WeatherInfo(
                                    text: "Text 3",
                                    subtext: "Subtext 3",
                                    imagePath: "resimler/sagınak.png",
                                  ),
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  WeatherInfo(
                                    text: "Text 4",
                                    subtext: "Subtext 4",
                                    imagePath: "resimler/sagınak.png",
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
                    icon: Icon(Icons.location_on),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.add_circle),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.menu),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Day()),
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
