// ignore_for_file: avoid_print, import_of_legacy_library_into_null_safe

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:weather_app/weather_locations.dart';
import 'package:weather_app/widgets/single_widgets.dart';
import 'package:weather_app/widgets/slider.dart';

class Weather extends StatefulWidget {
  const Weather({Key? key}) : super(key: key);

  @override
  WeatherApp createState() => WeatherApp();
}

class WeatherApp extends State<Weather> {
  int _current = 0;
  late String bgImg;
  _onPageChanged(int index) {
    setState(() {
      _current = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (LocationList[_current].weathertype == 'Sunny') {
      bgImg = 'assets/sunny.jpg';
    } else if (LocationList[_current].weathertype == 'Cloudy') {
      bgImg = 'assets/cloudy.jpeg';
    } else if (LocationList[_current].weathertype == 'Night') {
      bgImg = 'assets/night.jpg';
    } else if (LocationList[_current].weathertype == 'Rain') {
      bgImg = 'assets/rainy.jpg';
    }
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: const Text("Weather App"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 30,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
            child: GestureDetector(
              onTap: () {
                print('Menu Clicked');
              },
              child: SvgPicture.asset(
                'assets/menu.svg',
                height: 30,
                width: 30,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset(
            bgImg,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          Container(
            decoration: const BoxDecoration(color: Colors.black38),
          ),
          Container(
            margin: const EdgeInsets.only(top: 140, left: 15),
            child: Row(children: [
              for (int i = 0; i < LocationList.length; i++)
                if (i == _current) SliderDot(true) else SliderDot(false)
            ]),
          ),
          PageView.builder(
              scrollDirection: Axis.horizontal,
              onPageChanged: _onPageChanged,
              itemCount: LocationList.length,
              itemBuilder: (ctx, i) => Single_widget(i))
        ],
      ),
    );
  }
}
