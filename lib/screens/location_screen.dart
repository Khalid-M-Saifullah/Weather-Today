import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {

  LocationScreen({this.locationWeather});

  final locationWeather;
  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {

  double temperature = 0;
  String description = '';
  String cityName = '';

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    temperature = weatherData['main']['temp'];
    description = weatherData['weather'][0]['description'];
    cityName = weatherData['name'];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // alignment: Alignment.center,
        // padding: ,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/locationImage.jpg'),
            fit: BoxFit.fill,
          ),
        ),

        child: Center(
          child: Column (
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(cityName,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey[900],
                  ),
                ),
              ),
              Container(
                child:  Text('${temperature.toInt()}°C',
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey[800],
                  ),
                ),
              ),
              Container(
                child:  Text(description,
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey[900],
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




//running getData method
// double temperature = decodedData['main']['temp'];
// int condition = decodedData['weather'][0]['id'];
// String cityName = decodedData['name'];
//
// print(condition);
// print(temperature);
// print(cityName);
