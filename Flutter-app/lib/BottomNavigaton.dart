import 'package:flutter/material.dart';
import 'package:ornekler/google_map.dart';
import 'package:ornekler/location.dart';

class AltMenu extends StatelessWidget {
  const AltMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({super.key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(_) =>  Konumizin()));
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(

            //selectedIcon: Icon(Icons.circle),
            icon: Icon(Icons.local_pharmacy_sharp),
            label: 'Eczane',

          ),
          NavigationDestination(
           // selectedIcon: Icon(Icons.circle),
            icon: Icon(Icons.bus_alert),
            label: 'Ulaşım',
          ),
          NavigationDestination(
            //selectedIcon: Icon(Icons.circle),
            icon: Icon(Icons.info),
            label: 'Bilgi',
          ),
          NavigationDestination(
            //selectedIcon: Icon(Icons.circle),
            icon: Icon(Icons.person),
            label: 'Profil',
          )
        ],
      ),
      body: <Widget>[
        Container(
          color: Colors.red,
          alignment: Alignment.center,
          child: const Text('Eczane Bilgi Sistemi'),



        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Ulaşım Bilgi Sistemi'),
        ),
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: const Text('Bilgilendirme'),
        ),
        Container(
          color: Colors.yellow,
          alignment: Alignment.center,
          child: const Text("Profil detayları"),
        )
      ][currentPageIndex],
    );
  }
}

//Google Maps Add
