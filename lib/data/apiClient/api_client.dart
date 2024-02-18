//apikey = '2bd648478461a3a6dceb73dcf4da9433';
import 'dart:async';
import 'dart:convert';

import 'package:beatbox/data/models/deezer_resp.dart';
import 'package:http/http.dart' as http;

final apiurl = 'https://api.deezer.com/album/302127';

class MusicAPI {
  Future<List<Track>> fetchAlbumTracks() async {
    final response = await http.get(Uri.parse(apiurl));
    final Map<String, dynamic> responseData = json.decode(response.body);
    final album = DeezerAlbumResponse.fromJson(responseData);
    if (response.statusCode == 200) {
      return album.tracks?.data ?? [];
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
