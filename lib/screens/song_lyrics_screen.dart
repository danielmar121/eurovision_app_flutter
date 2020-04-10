import 'package:flutter/material.dart';

class SongLyricsScreen extends StatelessWidget {
  static const routeName = '/lyrics';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lyrics'),
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Text(
                'Country',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('song'),
              Text('artist')
            ],
          ),
        ),
      ),
    );
  }
}
