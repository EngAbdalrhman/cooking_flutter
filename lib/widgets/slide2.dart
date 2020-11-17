import 'package:flutter/material.dart';
import '../pages/recipe.dart';

class Slide2 extends StatelessWidget {
  const Slide2({@required this.imageNAME, this.imageText, this.supText});
  final String imageNAME;
  final String imageText;
  final String supText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => Recipe(
                        imageName: imageNAME,
                        imageText: imageText,
                        supText: supText,
                      )));
        },
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
              width: 200,
              height: 250,
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
      ),
    );
  }
}
