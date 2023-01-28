import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_today/services/location.dart';
import 'package:weather_today/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_today/screens/location_screen.dart';



const apiKey = 'f3a26dd90b476321b90850d8328708ac';

class LoadingScreen extends StatefulWidget {

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude = 0;
  double longitude = 0;

  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    Location location = Location();
    await location.getCurrentLocation();

    latitude = location.latitude;
    longitude = location.longitude;

    NetworkHelper networkHelper = NetworkHelper('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey');

    var weatherData = await networkHelper.getData();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen();
    }));
  }
  //frontend
  @override
  Widget build(BuildContext context) {
    // getData();
    return const Scaffold(
      body: Center(
        child: SpinKitSpinningLines(
          color: Colors.white,
          size: 100.0,
        ),
      ),

    );
  }
}