import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_app/weather_locations.dart';

import 'package:weather_app/widgets/single_widgets.dart';

class WeatherApp extends StatelessWidget {
  const WeatherApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
      body: Container(
        child: Stack(
          children: [
            Image.asset(
              "assets/night.jpg",
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.black38),
            ),
            Container(
              margin: EdgeInsets.only(top: 140, left: 15),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 12,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    width: 5,
                    height: 5,
                    decoration: const BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                  )
                ],
              ),
            ),
            PageView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: LocationList.length,
                itemBuilder: (ctx, i) => Single_widget(i))
          ],
        ),
      ),
    );
  }
}
