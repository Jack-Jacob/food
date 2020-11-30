import 'package:flutter/material.dart';

class Presentation extends StatefulWidget {
  Presentation({String nom, String prix});

  @override
  _PresentationState createState() => _PresentationState();
}

class _PresentationState extends State<Presentation> {
  var img = "assets/img/pizza_vrais.jpg";
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('$img'), fit: BoxFit.cover)),
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 100.0),
                  padding: EdgeInsets.symmetric(vertical: 20.0),
                  height: 180.0,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.black38,
                  child: new Text(
                    'Prix',
                    style: new TextStyle(
                        fontSize: 60.0,
                        color: Colors.black,
                        fontFamily: "Aston_Script_Pro.tff"),
                  ),
                )
              ],
            )));
  }
}
