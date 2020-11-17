import 'package:flutter/material.dart';
import 'consts.dart';

class searchBar extends StatefulWidget {
  @override
  _searchBarState createState() => _searchBarState();
}

class _searchBarState extends State<searchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 15, horizontal: 15),
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 5,
              color: Colors.black12,
            )
          ],
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(myradius)),
        ),
        child: Stack(
          children: [
            IconButton(
              icon: Icon(
                Icons.search,
                size: 20,
              ),
              onPressed: () {
                setState(() {});
              },
            ),
            Padding(
              padding: EdgeInsets.only(left: 50.0),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: TextStyle(
                      color: Colors.grey[200], fontWeight: FontWeight.w600),
                  hintText: "Search for recipes ",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
