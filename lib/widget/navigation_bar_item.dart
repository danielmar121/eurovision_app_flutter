import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class NavigationBarItem extends StatefulWidget {
  @override
  _NavigationBarItemState createState() => _NavigationBarItemState();
}

class _NavigationBarItemState extends State<NavigationBarItem> {
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: Theme.of(context).primaryColor,
      items: <Widget>[
        Icon(Icons.rate_review, color: Colors.white, size: 30),
        Icon(Icons.library_books, color: Colors.white, size: 30),
      ],
      onTap: (index) {
        //Handle button tap
      },
    );
  }
}
