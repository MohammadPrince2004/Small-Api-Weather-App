import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wheatherapp/Lib/ApiModels/FullModel.dart';
import 'package:wheatherapp/Lib/LocationServices/LocationService.dart';
import 'package:wheatherapp/Lib/weatherservices.dart/WeatherServices.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:wheatherapp/Ui/Designs/PageDesign.dart';
import 'package:wheatherapp/Ui/Pages/HomePage.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return PageDesign(
      rowData: [
        Icon(Icons.sunny, color: Colors.white),
        SizedBox(width: 10),
        Text(
          "Weather App",
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on_outlined,
              color: Colors.grey.withAlpha(85),
              size: 100,
            ),
            SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () async {
                var response = await context
                    .read<LocationService>()
                    .getMyLocation();
                  print(response);
                if (response is Map) {
                  print(response['locality']);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage(response)),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Alert"),
                        content: Text("Allow the Access To Get Your Location !!"),
                        
                      );
                    },
                  );

                  print(response);
                }
              },

              icon: Icon(
                Icons.location_on_outlined,
                color: Colors.black.withAlpha(200),
              ),
              label: Text(
                "Get The Weather At Your Location",
                style: TextStyle(color: Colors.black.withAlpha(200)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
