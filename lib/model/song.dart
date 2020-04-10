import 'package:flutter/foundation.dart';

class Song {
  final String id;
  final String name;
  final String country;
  final String artist;
  final String countryImageUrl;

  Song({
    @required this.id,
    @required this.name,
    @required this.country,
    @required this.artist,
    @required this.countryImageUrl,
  });
}
