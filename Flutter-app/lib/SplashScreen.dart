import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ornekler/BottomNavigaton.dart';
import 'dart:async';
import 'package:ornekler/google_map.dart';
import 'package:flutter/material.dart';

class BeklemeEkran extends StatefulWidget {
  const BeklemeEkran({Key? key}) : super(key: key);

  @override
  State<BeklemeEkran> createState() => _BeklemeEkranState();
}

class _BeklemeEkranState extends State<BeklemeEkran> {
  @override
  void initState(){
    super.initState();
        Timer(Duration(seconds: 3),(){
          Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_) => AltMenu()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[700],
      body: Center(
        child: Column(
          mainAxisAlignment:MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/splash.png',height: 120,),
            SizedBox(height: 20,),
            CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[700],
        title: Text("Title off the app"),
      ),
      body: Container(
        child: Center(
          child: Text("Home Page"),
        ),
      ),
    );
  }
}