import 'package:flutter/material.dart';

import '../screens/song_lyrics_screen.dart';

class SongItem extends StatelessWidget {
  final String id;
  final String name;
  final String country;
  final String artist;
  final String countryImageUrl;

  SongItem({
    @required this.id,
    @required this.name,
    @required this.country,
    @required this.artist,
    @required this.countryImageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Container(
          width: 50,
          child: Image.network(countryImageUrl),
        ),
        title: Text(country),
        subtitle: Text('"$name" by $artist'),
        trailing: Container(
          width: 100,
          child: Row(children: <Widget>[
            IconButton(
              icon: Icon(
                Icons.music_note,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {
                Navigator.of(context).pushNamed(SongLyricsScreen.routeName);
              },
            ),
            IconButton(
              icon: Icon(
                Icons.thumb_up,
                color: Theme.of(context).accentColor,
              ),
              onPressed: () {},
            ),
          ]),
        ),
      ),
    );
  }
}
