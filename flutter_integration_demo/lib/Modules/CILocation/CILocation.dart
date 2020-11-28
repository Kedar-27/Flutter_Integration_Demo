import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class CILocationScreen extends StatefulWidget {

  @override
  _CILocationScreenState createState() => _CILocationScreenState();
}

class _CILocationScreenState extends State<CILocationScreen> {
  Position _currentPosition;
  String _currentAddress;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Location'),
        backgroundColor: Color(0xFF444444),
      ),
      body: Center(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
          children: [
              // Image(image: null),

            this._currentPosition != null ? Text("Latitude:- ${this._currentPosition.latitude}, longitude:- ${this._currentPosition.longitude}") :
            Container(width: 0.0, height: 0.0),
            FlatButton(onPressed: () {
                  this._getCurrentLocation();
            }, child: Text("Get Location"),color: Colors.amberAccent
            ),
            Text("")

        ],),
      ),
    );
  }

  _getCurrentLocation() {
    Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });

    }).catchError((e) {
      print(e);
    });
  }
}
