import 'package:flutter/material.dart';
import 'package:food/config/images.dart';
import 'package:food/model/plats.dart';
import 'cardPlat.dart';

class ListePlat extends StatefulWidget {
  @override
  _ListePlatState createState() => _ListePlatState();
}

class _ListePlatState extends State<ListePlat> {
  List<Plat> list = [
    new Plat(name: "Pizza", path: "assets/img/pizza.jpeg"),
    new Plat(name: "Burges", path: "assets/img/burges.jpeg"),
    new Plat(name: "French fries", path: "assets/img/french-fries.png"),
    new Plat(name: "juice", path: "assets/img/juice.png"),
    new Plat(name: "Nuddle", path: "assets/img/Nuddle.jpeg"),
    new Plat(name: "Rice", path: "assets/img/riz.jpeg"),
    new Plat(name: "salade", path: "assets/img/salade.png"),
    new Plat(name: "Tacos", path: "assets/img/taco-vectors.png"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(ImageSys.background), fit: BoxFit.cover)),
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                height: 50.0,
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 23.0,
                      ),
                      onPressed: () => print("search"),
                    ),
                    IconButton(
                      icon: Icon(Icons.menu),
                      onPressed: () => print("search"),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        "What do you want to order ?",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Expanded(
                child: GestureDetector(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return cardPlat(
                            name: list[index].name, path: list[index].path);
                      }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
