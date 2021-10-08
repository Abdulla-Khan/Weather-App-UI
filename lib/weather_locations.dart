// ignore_for_file: non_constant_identifier_names

class WeatherLocation {
  final String city;
  final String datetime;
  final String temprature;
  final String weathertype;
  final String iconURL;
  final String wind;
  final String rain;
  final String humidity;
  WeatherLocation({
    required this.city,
    required this.datetime,
    required this.temprature,
    required this.weathertype,
    required this.iconURL,
    required this.wind,
    required this.rain,
    required this.humidity,
  });
}

final LocationList = [
  WeatherLocation(
      city: 'Karachi',
      datetime: '7:50 PM - Saturday 9,Oct,2021',
      temprature: '24\u2103',
      weathertype: 'Night',
      iconURL: 'assets/moon.svg',
      wind: '10',
      rain: '2',
      humidity: '10'),
  WeatherLocation(
      city: 'Bahawalpur',
      datetime: '1:14 PM - Sunday 10,Oct,2021',
      temprature: '17\u2103',
      weathertype: 'Cloudy',
      iconURL: 'assets/cloudy.svg',
      wind: '8',
      rain: '7',
      humidity: '82'),
  WeatherLocation(
      city: 'Islamabad',
      datetime: '3:22 PM - Monday 11,Oct,2021',
      temprature: '30\u2103',
      weathertype: 'Sunny',
      iconURL: 'assets/sun.svg',
      wind: '4',
      rain: '2',
      humidity: '34'),
  WeatherLocation(
      city: 'Dadu',
      datetime: '1:14 PM - Tuesday 12,Oct,2021',
      temprature: '17\u2103',
      weathertype: 'Rain',
      iconURL: 'assets/cloudy.svg',
      wind: '8',
      rain: '7',
      humidity: '82'),
];
