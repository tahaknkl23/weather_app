import 'package:flutter/material.dart';
import 'package:weather_app/ikinci_sayfa.dart';

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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(height: 300, child: Image.asset("resimler/weathertree.png")),
              Column(
                children: [
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
                      color: Colors.amber,
                      fontSize: 32,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  minimumSize: MaterialStateProperty.all(
                    Size(200, 60),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SonrakiSayfa()),
                  );
                },
                child: Text(
                  "Get Start",
                  style: TextStyle(
                    color: Colors.purple,
                    fontSize: 24,
                    fontFamily: 'Poppins',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
