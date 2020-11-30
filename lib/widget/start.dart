
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food/config/images.dart';
import 'package:food/widget/home.dart';

class Start extends StatefulWidget {
  @override
  _StartState createState() => _StartState();
}

class _StartState extends State<Start> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(ImageSys.background1), fit: BoxFit.cover)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children:  [
              Container(
                margin: EdgeInsets.only(left: 70.0),
                child: Center(
                  child: Text(
                    "Food",
                    style: new TextStyle(
                        fontSize: 90.0,
                        color: Colors.white,
                        fontFamily: "HoboStd"),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
