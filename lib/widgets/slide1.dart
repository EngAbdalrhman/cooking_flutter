import 'package:flutter/material.dart';

class Slide1 extends StatelessWidget {
  const Slide1({@required this.imageNAME, this.imageText});
  final String imageNAME;
  final String imageText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
                image: AssetImage('images/$imageNAME.jpg'), fit: BoxFit.cover)),
        width: 100,
        child: Padding(
          padding: const EdgeInsets.only(top: 70.0),
          child: Text(imageText,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              )),
        ),
      ),
    );
  }
}
