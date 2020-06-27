import 'package:flutter/material.dart';
//import 'package:flutter_notebook/ep01_build_first_app/main.dart';
import 'package:flutter_notebook/epi02_build_airbnb_clone/airbnb_home.dart';
//import 'axisAlignment/axis.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: AirbnbApp(),
      )
    );
  }
}
