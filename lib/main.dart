import 'package:flutter/material.dart';
import 'package:weather_app/screens/weather_app.dart';

void main() {
  runApp(const Weather_App());
}

class Weather_App extends StatelessWidget {
  const Weather_App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "FlutterDemo",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const Weather(),
    );
  }
}
