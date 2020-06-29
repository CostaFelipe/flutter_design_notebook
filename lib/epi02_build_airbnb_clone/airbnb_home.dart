import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AirbnbApp extends StatefulWidget {
  @override
  _AirbnbAppState createState() => _AirbnbAppState();
}

class _AirbnbAppState extends State<AirbnbApp> {
  List<Widget> pages;

  Color _color = Color.fromRGBO(251, 129, 144, 1);
  int _currrentIndex = 0;
  double padding = 16.0;

  @override
  Widget build(BuildContext context) {

    _definePages();

    return Scaffold(

      body: pages[_currrentIndex], 

      bottomNavigationBar: BottomNavigationBar(

        backgroundColor: Colors.white,
        elevation: 0,

        unselectedItemColor: Colors.black,
        unselectedIconTheme: IconThemeData(color: Colors.black, size: 28.0),
        unselectedLabelStyle: TextStyle(color: Colors.black, fontSize: 10.0, fontWeight: FontWeight.w600),
        unselectedFontSize: 10.0,

        selectedItemColor: _color,
        selectedIconTheme: IconThemeData(color: _color, size: 28.0),
        selectedLabelStyle: TextStyle(color: _color, fontSize: 10.0, fontWeight: FontWeight.w600),
        selectedFontSize: 10.0,
        
        onTap: (int index){
          setState(() {
            _currrentIndex = index;
          });
        },
        currentIndex: _currrentIndex,

        showSelectedLabels: true,
        showUnselectedLabels: true,

        items:[
          BottomNavigationBarItem(icon: Icon(Icons.search), title: Text("EXPLORE")),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), title: Text("SAVED")), 
          BottomNavigationBarItem(icon: Icon(FontAwesomeIcons.airbnb), title: Text("TRIPS")), 
          BottomNavigationBarItem(icon: Icon(Icons.inbox), title: Text("INBOX")), 
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), title: Text("PROFILE")),  
        ]
      ),
    );
  }

  _definePages(){

    pages = [
      //Placeholder(color: Colors.red),
    
    SafeArea(
      child:Padding(
        padding: EdgeInsets.only(left: padding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
               margin: EdgeInsets.only(top: padding/2, right: padding), 
               height: 40.0,
               decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.black12, spreadRadius: 1, blurRadius: 1)],
               ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Fortaleza, CE",
                     hintStyle: TextStyle(
                        fontSize: 16.0, color: Colors.black45, fontWeight: FontWeight.w600
                     ),
                   contentPadding: EdgeInsets.all(12.0)
                ),
             ),
            ),  
            Container(
              height: 48.0,
              child: ListView(
                padding: EdgeInsets.only(top: padding),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  //Datas
                  Container(
                    margin: EdgeInsets.only(right: padding),
                    width: 80.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.0),
                    ),
                    child: Center(
                      child: Text("Datas", 
                      style: TextStyle(
                        fontSize: 16.0, 
                        color: Colors.black54, 
                        fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                  //2 clientes, 1 criança

                  Container(
                    width: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black12, width: 1.0),
                      color: Colors.teal
                    ),
                    child: Center(
                      child: Text("2 Clientes, 1 criança", 
                      style: TextStyle(
                        fontSize: 16.0, color: Colors.white, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ], 
              ),
            ),

            //explore Fortaleza
            Container(
              margin: EdgeInsets.only(top: padding * 2),
              height: 150.0,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  //titulo
                  Text("Explore Fortaleza".toUpperCase(),
                      style: TextStyle(
                        fontSize: 20.0, color: Colors.black, fontWeight: FontWeight.bold
                      ),
                  ),
                  //ListaView
                  Flexible(
                    fit: FlexFit.tight,
                    child: ListView.builder(
                      padding: EdgeInsets.only(top: padding),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 4,
                      itemBuilder: (context, index){
                        return Container(
                           margin: EdgeInsets.only(right: padding),
                           width: 150.0,
                           child: Placeholder(), 
                        );
                      }),
                  ),
                ],
              ),
            ),
          ],
        ), 
      ),
    ),

      Placeholder(color: Colors.amber),
      Placeholder(color: Colors.teal),
      Placeholder(color: Colors.deepPurple),
      Placeholder(color: Colors.pinkAccent),
    ];
  }
}