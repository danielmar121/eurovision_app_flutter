import 'package:flutter/foundation.dart';
import '../model/song.dart';

class Songs with ChangeNotifier {
  List<Song> _songs = [
    Song(
      id: 's1',
      name: 'My Last Breath',
      country: 'United Kingdom',
      artist: 'James Newman',
      countryImageUrl:
          'https://cdn.countryflags.com/thumbs/united-kingdom/flag-800.png',
    ),
    Song(
      id: 's2',
      name: 'Universo',
      country: 'Spain',
      artist: 'Blas Cantó',
      countryImageUrl: 'https://cdn.countryflags.com/thumbs/spain/flag-800.png',
    ),
    Song(
      id: 's3',
      name: 'Fai rumore',
      country: 'Italy',
      artist: 'Diodato',
      countryImageUrl: 'http://wikigenia.org.il/images/d/d2/Flag_of_Italy.JPG',
    ),
    Song(
      id: 's4',
      name: 'Violent Thing',
      country: 'Germany',
      artist: 'Ben Dolic',
      countryImageUrl:
          'https://cdn.countryflags.com/thumbs/germany/flag-800.png',
    ),
    Song(
      id: 's5',
      name: 'Mon alliée',
      country: 'France',
      artist: 'Tom Leeb',
      countryImageUrl:
          'https://flaglane.com/download/french-flag/french-flag-graphic.png',
    ),
  ];

  List<Song> get songs {
    return [..._songs];
  }

  int get songsCount {
    return _songs.length;
  }
}
