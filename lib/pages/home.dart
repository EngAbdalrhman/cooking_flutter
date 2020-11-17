import 'package:flutter/material.dart';
import 'package:floating_navbar/floating_navbar.dart';
import '../widgets/search.dart';
import '../widgets/slide1.dart';
import 'recipe.dart';
import '../widgets/slide2.dart';
import '../widgets/bottom_navBar.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 5, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Text(
                    'Hello, Abdalrhman',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                  SizedBox(
                    width: 125,
                  ),
                  CircleAvatar(
                    radius: 25.0,
                    backgroundImage: AssetImage('images/abdo.jpg'),
                  )
                ],
              ),
              searchBar(),
              Container(
                height: 100,
                margin: EdgeInsets.symmetric(vertical: 5.0),
                child: ListView(
                  //   padding: EdgeInsets.only(right: 20.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Slide1(imageNAME: 'pizza', imageText: 'Pizza'),
                    Slide1(imageNAME: 'taco', imageText: 'Taco'),
                    Slide1(imageNAME: 'burger', imageText: 'Burger'),
                    Slide1(imageNAME: 'green_taco', imageText: 'Green Taco '),
                    Slide1(imageNAME: 'pizza', imageText: 'pizza'),
                    Slide1(imageNAME: 'pizza', imageText: 'pizza'),
                    Slide1(imageNAME: 'pizza', imageText: 'pizza'),
                    Slide1(imageNAME: 'pizza', imageText: 'pizza'),
                    Slide1(imageNAME: 'pizza', imageText: 'pizza'),
                  ],
                ),
              ),
              Text('Recommended',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Container(
                height: 300,
                margin: EdgeInsets.symmetric(vertical: 5.0),
                child: ListView(
                  //   padding: EdgeInsets.only(right: 20.0),
                  scrollDirection: Axis.horizontal,
                  children: [
                    Slide2(
                      imageNAME: 'pizza2',
                      imageText: 'salad',
                      supText: '40 min',
                    ),
                    Slide2(
                      imageNAME: 'pizza',
                      imageText: 'pizza',
                      supText: '20 min',
                    ),
                    Slide2(
                      imageNAME: 'pizza2',
                      imageText: 'salad',
                      supText: '40 min',
                    ),
                    Slide2(
                      imageNAME: 'pizza2',
                      imageText: 'salad',
                      supText: '40 min',
                    ),
                  ],
                ),
              ),
              navBar()
            ],
          ),
        ),
      ),
    );
  }
}
