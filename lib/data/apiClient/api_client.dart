//apikey = '2bd648478461a3a6dceb73dcf4da9433';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

final apiurl = 'https://api.deezer.com/album/302127';

class MusicAPI {
  FutureOr<Album> fetchAlbum() async {
    final response = await http.get(Uri.parse(apiurl));
    final Map<String, dynamic> responseData = json.decode(response.body);
    final album = Album.fromJson(responseData);
    if (response.statusCode == 200) {
      print('Image URL: ${album.imageUrl}');
      print('Title: ${album.title}');
      print('Artist: ${album.artistName}');

      return album;
    } else {
      throw Exception('Failed to load album');
    }
  }
}

class Album {
  final String title;
  final String artistName;
  final String imageUrl;
  final String songPath;

  Album({
    required this.title,
    required this.artistName,
    required this.imageUrl,
    required this.songPath,
  });

  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      title: json['title'],
      artistName: json['artist'] != null ? json['artist']['name'] ?? '' : '',
      imageUrl: json['cover_big'] ?? '',
      songPath: json['preview'] ?? '',
    );
  }
}
