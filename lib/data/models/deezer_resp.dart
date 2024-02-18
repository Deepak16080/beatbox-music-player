class DeezerAlbumResponse {
  final int? id;
  final String? title;
  final String? upc;
  final String? link;
  final String? share;
  final String? cover;
  final String? coverSmall;
  final String? coverMedium;
  final String? coverBig;
  final String? coverXl;
  final String? md5Image;
  final int? genreId;
  final Genres? genres;
  final String? label;
  final int? nbTracks;
  final int? duration;
  final int? fans;
  final String? releaseDate;
  final String? recordType;
  final bool? available;
  final String? tracklist;
  final bool? explicitLyrics;
  final int? explicitContentLyrics;
  final int? explicitContentCover;
  final List<Contributors>? contributors;
  final Artist? artist;
  final String? type;
  final Tracks? tracks;

  DeezerAlbumResponse({
    this.id,
    this.title,
    this.upc,
    this.link,
    this.share,
    this.cover,
    this.coverSmall,
    this.coverMedium,
    this.coverBig,
    this.coverXl,
    this.md5Image,
    this.genreId,
    this.genres,
    this.label,
    this.nbTracks,
    this.duration,
    this.fans,
    this.releaseDate,
    this.recordType,
    this.available,
    this.tracklist,
    this.explicitLyrics,
    this.explicitContentLyrics,
    this.explicitContentCover,
    this.contributors,
    this.artist,
    this.type,
    this.tracks,
  });

  DeezerAlbumResponse.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        upc = json['upc'] as String?,
        link = json['link'] as String?,
        share = json['share'] as String?,
        cover = json['cover'] as String?,
        coverSmall = json['cover_small'] as String?,
        coverMedium = json['cover_medium'] as String?,
        coverBig = json['cover_big'] as String?,
        coverXl = json['cover_xl'] as String?,
        md5Image = json['md5_image'] as String?,
        genreId = json['genre_id'] as int?,
        genres = (json['genres'] as Map<String, dynamic>?) != null
            ? Genres.fromJson(json['genres'] as Map<String, dynamic>)
            : null,
        label = json['label'] as String?,
        nbTracks = json['nb_tracks'] as int?,
        duration = json['duration'] as int?,
        fans = json['fans'] as int?,
        releaseDate = json['release_date'] as String?,
        recordType = json['record_type'] as String?,
        available = json['available'] as bool?,
        tracklist = json['tracklist'] as String?,
        explicitLyrics = json['explicit_lyrics'] as bool?,
        explicitContentLyrics = json['explicit_content_lyrics'] as int?,
        explicitContentCover = json['explicit_content_cover'] as int?,
        contributors = (json['contributors'] as List?)
            ?.map(
                (dynamic e) => Contributors.fromJson(e as Map<String, dynamic>))
            .toList(),
        artist = (json['artist'] as Map<String, dynamic>?) != null
            ? Artist.fromJson(json['artist'] as Map<String, dynamic>)
            : null,
        type = json['type'] as String?,
        tracks = (json['tracks'] as Map<String, dynamic>?) != null
            ? Tracks.fromJson(json['tracks'] as Map<String, dynamic>)
            : null;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'upc': upc,
        'link': link,
        'share': share,
        'cover': cover,
        'cover_small': coverSmall,
        'cover_medium': coverMedium,
        'cover_big': coverBig,
        'cover_xl': coverXl,
        'md5_image': md5Image,
        'genre_id': genreId,
        'genres': genres?.toJson(),
        'label': label,
        'nb_tracks': nbTracks,
        'duration': duration,
        'fans': fans,
        'release_date': releaseDate,
        'record_type': recordType,
        'available': available,
        'tracklist': tracklist,
        'explicit_lyrics': explicitLyrics,
        'explicit_content_lyrics': explicitContentLyrics,
        'explicit_content_cover': explicitContentCover,
        'contributors': contributors?.map((e) => e.toJson()).toList(),
        'artist': artist?.toJson(),
        'type': type,
        'tracks': tracks?.toJson()
      };
}

class Genres {
  final List<Data>? data;

  Genres({
    this.data,
  });

  Genres.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)
            ?.map((dynamic e) => Data.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'data': data?.map((e) => e.toJson()).toList()};
}

class Data {
  final int? id;
  final String? name;
  final String? picture;
  final String? type;

  Data({
    this.id,
    this.name,
    this.picture,
    this.type,
  });

  Data.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        picture = json['picture'] as String?,
        type = json['type'] as String?;

  Map<String, dynamic> toJson() =>
      {'id': id, 'name': name, 'picture': picture, 'type': type};
}

class Contributors {
  final int? id;
  final String? name;
  final String? link;
  final String? share;
  final String? picture;
  final String? pictureSmall;
  final String? pictureMedium;
  final String? pictureBig;
  final String? pictureXl;
  final bool? radio;
  final String? tracklist;
  final String? type;
  final String? role;

  Contributors({
    this.id,
    this.name,
    this.link,
    this.share,
    this.picture,
    this.pictureSmall,
    this.pictureMedium,
    this.pictureBig,
    this.pictureXl,
    this.radio,
    this.tracklist,
    this.type,
    this.role,
  });

  Contributors.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        link = json['link'] as String?,
        share = json['share'] as String?,
        picture = json['picture'] as String?,
        pictureSmall = json['picture_small'] as String?,
        pictureMedium = json['picture_medium'] as String?,
        pictureBig = json['picture_big'] as String?,
        pictureXl = json['picture_xl'] as String?,
        radio = json['radio'] as bool?,
        tracklist = json['tracklist'] as String?,
        type = json['type'] as String?,
        role = json['role'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'link': link,
        'share': share,
        'picture': picture,
        'picture_small': pictureSmall,
        'picture_medium': pictureMedium,
        'picture_big': pictureBig,
        'picture_xl': pictureXl,
        'radio': radio,
        'tracklist': tracklist,
        'type': type,
        'role': role
      };
}

class Artist {
  final int? id;
  final String? name;
  final String? picture;
  final String? pictureSmall;
  final String? pictureMedium;
  final String? pictureBig;
  final String? pictureXl;
  final String? tracklist;
  final String? type;

  Artist({
    this.id,
    this.name,
    this.picture,
    this.pictureSmall,
    this.pictureMedium,
    this.pictureBig,
    this.pictureXl,
    this.tracklist,
    this.type,
  });

  Artist.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        name = json['name'] as String?,
        picture = json['picture'] as String?,
        pictureSmall = json['picture_small'] as String?,
        pictureMedium = json['picture_medium'] as String?,
        pictureBig = json['picture_big'] as String?,
        pictureXl = json['picture_xl'] as String?,
        tracklist = json['tracklist'] as String?,
        type = json['type'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
        'picture': picture,
        'picture_small': pictureSmall,
        'picture_medium': pictureMedium,
        'picture_big': pictureBig,
        'picture_xl': pictureXl,
        'tracklist': tracklist,
        'type': type
      };
}

class Tracks {
  final List<Track>? data;

  Tracks({
    this.data,
  });

  Tracks.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as List?)
            ?.map((dynamic e) => Track.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'data': data?.map((e) => e.toJson()).toList()};
}

class Track {
  final int? id;
  final bool? readable;
  final String? title;
  final String? titleShort;
  final String? titleVersion;
  final String? link;
  final int? duration;
  final int? rank;
  final bool? explicitLyrics;
  final int? explicitContentLyrics;
  final int? explicitContentCover;
  final String? preview;
  final String? md5Image;
  final Artist? artist;
  final Album? album;
  final String? type;

  Track({
    this.id,
    this.readable,
    this.title,
    this.titleShort,
    this.titleVersion,
    this.link,
    this.duration,
    this.rank,
    this.explicitLyrics,
    this.explicitContentLyrics,
    this.explicitContentCover,
    this.preview,
    this.md5Image,
    this.artist,
    this.album,
    this.type,
  });

  Track.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        readable = json['readable'] as bool?,
        title = json['title'] as String?,
        titleShort = json['title_short'] as String?,
        titleVersion = json['title_version'] as String?,
        link = json['link'] as String?,
        duration = json['duration'] as int?,
        rank = json['rank'] as int?,
        explicitLyrics = json['explicit_lyrics'] as bool?,
        explicitContentLyrics = json['explicit_content_lyrics'] as int?,
        explicitContentCover = json['explicit_content_cover'] as int?,
        preview = json['preview'] as String?,
        md5Image = json['md5_image'] as String?,
        artist = (json['artist'] as Map<String, dynamic>?) != null
            ? Artist.fromJson(json['artist'] as Map<String, dynamic>)
            : null,
        album = (json['album'] as Map<String, dynamic>?) != null
            ? Album.fromJson(json['album'] as Map<String, dynamic>)
            : null,
        type = json['type'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'readable': readable,
        'title': title,
        'title_short': titleShort,
        'title_version': titleVersion,
        'link': link,
        'duration': duration,
        'rank': rank,
        'explicit_lyrics': explicitLyrics,
        'explicit_content_lyrics': explicitContentLyrics,
        'explicit_content_cover': explicitContentCover,
        'preview': preview,
        'md5_image': md5Image,
        'artist': artist?.toJson(),
        'album': album?.toJson(),
        'type': type
      };
}

class Album {
  final int? id;
  final String? title;
  final String? cover;
  final String? coverSmall;
  final String? coverMedium;
  final String? coverBig;
  final String? coverXl;
  final String? md5Image;
  final String? tracklist;
  final String? type;

  Album({
    this.id,
    this.title,
    this.cover,
    this.coverSmall,
    this.coverMedium,
    this.coverBig,
    this.coverXl,
    this.md5Image,
    this.tracklist,
    this.type,
  });

  Album.fromJson(Map<String, dynamic> json)
      : id = json['id'] as int?,
        title = json['title'] as String?,
        cover = json['cover'] as String?,
        coverSmall = json['cover_small'] as String?,
        coverMedium = json['cover_medium'] as String?,
        coverBig = json['cover_big'] as String?,
        coverXl = json['cover_xl'] as String?,
        md5Image = json['md5_image'] as String?,
        tracklist = json['tracklist'] as String?,
        type = json['type'] as String?;

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'cover': cover,
        'cover_small': coverSmall,
        'cover_medium': coverMedium,
        'cover_big': coverBig,
        'cover_xl': coverXl,
        'md5_image': md5Image,
        'tracklist': tracklist,
        'type': type
      };
}
