import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/songs.dart';

import './screens/song_lyrics_screen.dart';
import './screens/voting_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: Songs(),
        ),
      ],
      child: MaterialApp(
        title: 'EurovisionApp',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          accentColor: Colors.purple,
        ),
        home: VotingScreen(),
        routes: {
          SongLyricsScreen.routeName: (ctx) => SongLyricsScreen(),
        },
      ),
    );
  }
}
