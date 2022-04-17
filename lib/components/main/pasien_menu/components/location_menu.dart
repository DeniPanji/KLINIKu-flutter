import 'package:flutter/material.dart';

class LocationPage extends StatefulWidget {
  LocationPage({Key? key}) : super(key: key);

  @override
  State<LocationPage> createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(232, 255, 221, 1),
      body: Center(
          child: Text(
        "Location",
        style: TextStyle(fontSize: 60, color: Colors.black),
      )),
    );
  }
}
