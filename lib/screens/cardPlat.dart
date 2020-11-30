import 'package:flutter/material.dart';
import 'package:food/config/images.dart';
import 'package:food/widget/presentation.dart';

Widget cardPlat({name, path}) {
  return GestureDetector(
    child: Card(
      margin: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      elevation: 8.0,
      child: Container(
        height: 60.0,
        width: double.infinity,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(ImageSys.backgroundP), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(5.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(name, style: TextStyle(color: Colors.grey)),
            Image.asset(path),
          ],
        ),
      ),
    ),
    onTap: () {
      var nom = name;
      Navigator.push(name,
          MaterialPageRoute(builder: (context) => Presentation(nom: "$nom")));
    },
  );
}
