import 'package:flutter/material.dart';
import 'consts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class navBar extends StatefulWidget {
  @override
  _navBarState createState() => _navBarState();
}

class _navBarState extends State<navBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5.0,
              color: Colors.black12,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(myradius)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(
                Icons.home,
                size: 30,
              ),
              onPressed: () {
                setState(() {});
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.heart),
              onPressed: () {
                setState(() {});
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.gamepad),
              onPressed: () {
                setState(() {});
              },
            ),
            IconButton(
              icon: FaIcon(FontAwesomeIcons.user),
              onPressed: () {
                setState(() {});
              },
            ),
          ],
        ),
      ),
    );
  }
}
