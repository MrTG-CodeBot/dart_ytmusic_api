import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await searchAlbums(ytmusic, 'RDX');
}

Future<void> searchAlbums(YTMusic ytmusic, String query) async {
  final results = await ytmusic.searchAlbums(query);
  for (final result in results) {
    print('----------------------------------');
    print('${result.name} - ${result.artist.name} - ${result.albumId} ${result.playlistId} ${result.thumbnails[0].url} ${result.type} ${result.year}');
  }
}