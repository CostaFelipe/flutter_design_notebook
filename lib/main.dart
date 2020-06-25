import 'package:flutter/material.dart';
import 'axisAlignment/axis.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Colunas")
        ),
        body: AxisAligment(),
      )
    );
  }
}
