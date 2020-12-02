import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food/screens/liste_plats.dart';

class Presentation extends StatefulWidget {
  final String nom;
  Presentation({@required this.nom});
  @override
  _PresentationState createState() => _PresentationState();
}
class _PresentationState extends State<Presentation> {
  String monNom;
  var img ='';
  var Plat ="";
  var prix ="";
  void initState() {
    super.initState();

    monNom =  widget.nom;
  }
  Widget build(BuildContext context) {
    switch(monNom){
      case "Pizza":
        img ="assets/img/pizza_vrais.jpg";
        Plat ="$monNom";
        prix ="7500";
      break;
      case "Burges":
        img ="assets/img/burger_vrais.jpg";
        Plat ="$monNom";
        prix ="3500";
      break;
      case "French fries":
        img ="assets/img/frite_vrais.jpg";
        Plat ="$monNom";
      prix ="1000";
      break;
      case "juice":
        img ="assets/img/jus_vrais.jpg";
        Plat ="$monNom";
        prix ="1000";
      break;
      case "Nuddle":
        img ="assets/img/nuddle_vrais.jpg";
        Plat ="$monNom";
        prix ="4500";
      break;
      case "Rice":
        img ="assets/img/riz_vrais.jpg";
        Plat ="$monNom";
        prix ="8000";
      break;
      case "salade":
        img ="assets/img/Salade_vrais.jpg";
        Plat ="$monNom";
        prix ="3500";
      break;
      case "Tacos":
        img ="assets/img/Tacos_vrais.jpg";
        Plat ="$monNom";
        prix ="3500";
      break;
      default: break;
    }
    return
      GestureDetector(
        child: Scaffold(
          body: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 1.7 ,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                   image: AssetImage('$img'), fit: BoxFit.cover),
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)))
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                width: MediaQuery.of(context).size.width,
                child: new Text(
                  "$Plat",
                  style: new TextStyle(
                      fontSize: 40.0,
                      color: Colors.black54,
                      fontFamily: "HoboStd"),
                        ),
                      ),
                     SizedBox(
                height: 1.0,
              ),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 20.0),
                width: MediaQuery.of(context).size.width,
                child: new Text(
                  '$prix F-CFA',
                  style: new TextStyle(
                      fontSize: 15.0,
                      color: Colors.red,
                      fontFamily: "HoboStd"),
                        ),
                      ),
              Container(
                height: MediaQuery.of(context).size.height / 12,
                width: 300.0,
                child: new RaisedButton(
                    shape: StadiumBorder(),
                    color: Colors.red,
                  child: Text(
                    "Buy",
                     style: new TextStyle(color: Colors.white),
              ),
                onPressed: () {

                })
              )
                    ],
                  )
    ),
      onHorizontalDragCancel:  () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => ListePlat()));
      },);
  }
}

