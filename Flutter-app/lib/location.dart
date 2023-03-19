import 'dart:html';

import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Konumizin extends StatefulWidget{
  Konumizin({Key? key}) : super(key: key);

  @override
  _KonumizinState createState() => _KonumizinState();
}

class _KonumizinState extends State<Konumizin> {

  Location location = new Location();

  late bool _serviceEnabled;
  PermissionStatus? _permissionGranted;
  LocationData? _locationData;

  void getLocation() async{
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }

    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

    _locationData = await location.getLocation();

    location.onLocationChanged.listen((LocationData event) {
      print("Lat ${event.latitude} ve Lon ${event.longitude}");
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Deneme"),
      ),
    );
  }
}
