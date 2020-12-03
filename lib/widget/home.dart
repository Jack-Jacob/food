import 'package:flutter/material.dart';
import 'package:food/config/images.dart';
import 'package:food/screens/liste_plats.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageSys.background), fit: BoxFit.cover)),
        child: Center(
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              new Text(
                "Food",
                style: new TextStyle(
                    fontSize: 100.5,
                    color: Colors.black,
                    fontFamily: "HoboStd"),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                height: MediaQuery.of(context).size.height / 10,
                width: 300.0,
                child: new TextFormField(
                  decoration: InputDecoration(
                      border: new OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      filled: false,
                      hintText: "Email"),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height / 10,
                width: 300.0,
                child: new TextFormField(
                  decoration: InputDecoration(
                      hoverColor: Colors.grey,
                      border: new OutlineInputBorder(
                        borderSide:
                            new BorderSide(width: 20.0, color: Colors.black),
                        borderRadius: BorderRadius.circular(15.0),
                      ),
                      filled: false,
                      hintText: "Password"),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Container(
                  height: MediaQuery.of(context).size.height / 12,
                  width: 300.0,
                  child: new RaisedButton(
                      shape: StadiumBorder(),
                      color: Colors.red,
                      child: Text(
                        "Login",
                        style: new TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ListePlat()));
                      })
              ),
              new Text(
                "Forgot Password",
                style: new TextStyle(
                  //color: ,
                  //fontSize: ,
                  fontFamily: "LeelawUI",
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
