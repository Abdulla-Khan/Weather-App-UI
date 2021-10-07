import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import 'package:weather_app/screens/weather_app.dart';

void main() {
  runApp(Weather_App());
}

class Weather_App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterDemo",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const WeatherApp(),
    );
  }
}
