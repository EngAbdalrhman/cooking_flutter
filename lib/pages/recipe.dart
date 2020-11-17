import 'package:flutter/material.dart';
import '../widgets/slide3.dart';
import '../widgets/consts.dart';

class Recipe extends StatelessWidget {
  const Recipe({@required this.imageName, this.imageText, this.supText});
  final String imageName;
  final String imageText;
  final String supText;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.white),
        home: Scaffold(
            body: SafeArea(
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20.0),
                      bottomLeft: Radius.circular(20.0),
                    ),
                    image: DecorationImage(
                        image: AssetImage('images/$imageName.jpg'),
                        fit: BoxFit.cover)),
                height: 400,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black12,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Text(imageText,
                            style: TextStyle(
                                fontSize: 35,
                                fontWeight: FontWeight.w600,
                                color: Colors.black)),
                      ),
                      Center(
                        child: Text(supText,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey[500])),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.time_to_leave,
                                size: 30,
                                color: Colors.orange,
                              ),
                              Text('30 min',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[500]))
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.fire_extinguisher,
                                size: 30,
                                color: Colors.orange,
                              ),
                              Text('230 kal',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[500]))
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.circle,
                                size: 30,
                                color: Colors.orange,
                              ),
                              Text('3 ',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.grey[500]))
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text('ingredients',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),
              Container(
                height: 141,
                margin: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    Slide3(
                      imageNAME: 'pizza',
                      imageText: 'onion',
                      supText: '200gr',
                    ),
                    Slide3(
                      imageNAME: 'pizza',
                      imageText: 'onion',
                      supText: '200gr',
                    ),
                    Slide3(
                      imageNAME: 'pizza',
                      imageText: 'onion',
                      supText: '200gr',
                    ),
                    Slide3(
                      imageNAME: 'pizza',
                      imageText: 'onion',
                      supText: '200gr',
                    ),
                    Slide3(
                      imageNAME: 'pizza',
                      imageText: 'onion',
                      supText: '200gr',
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                child: Text('cooking instruction',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text('step 1',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.orange)),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 30),
                child: Text(tips,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Colors.black)),
              ),
            ],
          ),
        )));
  }
}

//_MyRecipe(),
