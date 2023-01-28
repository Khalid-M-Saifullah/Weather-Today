import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LocationScreen extends StatefulWidget {

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
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
                child: const Text('Dhaka',
                  style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.black54,
                  ),
                ),
              ),
              Container(
                child: const Text('30',
                  style: TextStyle(
                    fontSize: 100.0,
                    fontWeight: FontWeight.w400,
                    color: Colors.blueGrey,
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
