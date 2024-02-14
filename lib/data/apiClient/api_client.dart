//apikey = '2bd648478461a3a6dceb73dcf4da9433';
import 'dart:convert';

import 'package:http/http.dart' as http;

final apiurl = 'https://api.deezer.com/album/302127';

class MusicAPI {
  Future<Album> fetchAlbum() async {
    final response = await http.get(Uri.parse(apiurl));
    if (response.statusCode == 200) {
      return Album.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load album');
    }
  }
}

class Album {
  final String title;
  final String artistName;
  final String releaseDate;
  final int genreId;
  final int numberOfTracks;
  final String imageUrl; // New field for image URL

  Album({
    required this.title,
    required this.artistName,
    required this.releaseDate,
    required this.genreId,
    required this.numberOfTracks,
    required this.imageUrl,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'] ?? '',
      artistName: json['artist'] != null ? json['artist']['name'] ?? '' : '',
      releaseDate: json['release_date'] ?? '',
      genreId: json['genre_id'] ?? 0,
      numberOfTracks: json['nb_tracks'] ?? 0,
      imageUrl: json['Picture'] ?? '',
    );
  }
}
