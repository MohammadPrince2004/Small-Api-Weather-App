import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheatherapp/Lib/Api/DioApi/DioApi.dart';
import 'package:wheatherapp/Lib/LocationServices/LocationService.dart';
import 'package:wheatherapp/Lib/weatherservices.dart/WeatherServices.dart';
import 'package:wheatherapp/Ui/Designs/ChosenMeasurand.dart';
import 'package:wheatherapp/Ui/Designs/PageDesign.dart';
import 'package:wheatherapp/Ui/Pages/HomePage.dart';
import 'package:wheatherapp/Ui/Pages/MainPage.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        Provider<WeatherServices>(
          create: (context) => WeatherServices(DioApi()),
        ),
        Provider<LocationService>(create: (context) => LocationService()),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: MainPage())
    );
  }
}
