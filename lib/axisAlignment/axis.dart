import 'package:flutter/material.dart';

class AxisAligment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text("Axis"),
      ),
      body: Container(
        width: double.infinity,
        child: Column(
          
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children:<Widget>[
            FlutterLogo(size:100, colors: Colors.red,),
            FlutterLogo(size:100, colors: Colors.green,),
            FlutterLogo(size:100, colors: Colors.orange,),
            FlutterLogo(size:100)
          ]
        )
      ),
    );
  }
}