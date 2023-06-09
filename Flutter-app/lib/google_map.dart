import 'dart:async';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapPage extends StatefulWidget {
  const GoogleMapPage({Key? key}) : super(key: key);
  @override
  State<GoogleMapPage> createState() => _GoogleMapPageState();
}

class _GoogleMapPageState extends State<GoogleMapPage> {
  Completer<GoogleMapController> _controller = Completer();
  double zoomVal = 5.0;
  MapType _currentMapType = MapType.normal;

  @override
  void initState(){
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(55.0),
        child: AppBar(
          title: Text(
            'Google Map Flutter',
            style: TextStyle(
              fontSize: 24,
              color: Colors.grey[800],
              fontWeight: FontWeight.w400
            ),
          ),
          backgroundColor: Colors.white70,
          elevation: 0,
          automaticallyImplyLeading: false,
        ),
      ),
      body: Stack(
        children:<Widget> [
          _buildGoogleMap(context),
          _zoomMinusFunction(),
        ],
      ),
    );
  }
  Widget _buildGoogleMap(BuildContext context){
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.height,
      child: GoogleMap(
        mapType: _currentMapType,
        initialCameraPosition:
        CameraPosition(target: LatLng(38.4127,27.1384), zoom: 12),
        onMapCreated: (GoogleMapController controller){
          _controller.complete(controller);
        },
        markers: {},
      ),
    );
  }
  Widget _zoomMinusFunction(){
    return Align(
      alignment: Alignment.topRight,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, right: 8.0),
            child: Row(
              children: [
                Spacer(),
                Column(
                  children: [
                    Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                        )
                      ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.minus,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: () {
                          zoomVal--;
                          _minus(zoomVal);
                        }),
                    ),
                    SizedBox(height: 10),
                    Container(
                      width: 55.0,
                      height: 55.0,
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                        )
                      ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.plus,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed: (){
                          zoomVal++;
                          _plus(zoomVal);
                        }),
                    ),
                    SizedBox(height: 10),
                    Container(
                    width: 55.0,
                    height: 55.0,
                         decoration: BoxDecoration(
                         color: Colors.blueAccent,
                          borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40.0),
                          topRight: Radius.circular(40.0),
                          bottomLeft: Radius.circular(40.0),
                          bottomRight: Radius.circular(40.0),
                    )
                         ),
                      child: IconButton(
                        icon: Icon(
                          FontAwesomeIcons.mapMarkedAlt,
                          color: Colors.white,
                          size: 20,
                        ),
                        onPressed:  () {
                          setState(() {
                            _currentMapType =
                                _currentMapType == MapType.normal
                                ? MapType.satellite
                                    :MapType.normal;
                          });
                        }),
                      ),
                    ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
  Future<void> _minus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
      CameraPosition(target: LatLng(38.4127,27.1384), zoom: zoomVal)));
  }

  Future<void> _plus(double zoomVal) async {
    final GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(
        CameraPosition(target: LatLng(38.4127, 27.1384), zoom: zoomVal)));
  }
}
