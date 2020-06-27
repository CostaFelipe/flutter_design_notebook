import 'package:flutter/material.dart';
import 'package:flutter_notebook/ep01_build_first_app/main.dart';
//import 'axisAlignment/axis.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App")
        ),
        body: Main(),
      )
    );
  }
}
