import 'package:flutter/material.dart';

class Slide3 extends StatelessWidget {
  const Slide3({@required this.imageNAME, this.imageText, this.supText});
  final String imageNAME;
  final String imageText;
  final String supText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    image: AssetImage('images/$imageNAME.jpg'),
                    fit: BoxFit.cover)),
            width: 100,
            height: 100,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                  child: Text(
                imageText,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.black),
              )),
              Container(
                  child: Text(
                supText,
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey[500]),
              ))
            ],
          ),
        ],
      ),
    );
  }
}
