import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widget/navigation_bar_item.dart';
import '../widget/song_item.dart';
import '../providers/songs.dart';

class VotingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _songsData = Provider.of<Songs>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Stozot Eurovision'),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (ctx, i) => SongItem(
              id: _songsData.songs[i].id,
              name: _songsData.songs[i].name,
              country: _songsData.songs[i].country,
              artist: _songsData.songs[i].artist,
              countryImageUrl: _songsData.songs[i].countryImageUrl),
          itemCount: _songsData.songsCount,
        ),
      ),
      bottomNavigationBar: NavigationBarItem(),
    );
  }
}
