import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AirbnbApp extends StatefulWidget {
  @override
  _AirbnbAppState createState() => _AirbnbAppState();
}

class _AirbnbAppState extends State<AirbnbApp> {
  Color _color = Color.fromARGB(224, 129, 143, 2);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[

          ]
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,
        elevation: 0,
        unselectedIconTheme: IconThemeData(color: _color, size: 25.0),
        selectedIconTheme: IconThemeData(color: Colors.black, size: 25.0),
        showSelectedLabels: false,
        showUnselectedLabels: false,

        items:[
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.search), title: Text("")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), title: Text("")), 
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.airbnb), title: Text("")), 
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.inbox), title: Text("")), 
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("")),  
        ]
      ),
    );
  }
}