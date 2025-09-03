import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await searchSongs(ytmusic, 'sweather weather');
}
Future<void> searchSongs(YTMusic ytmusic, String query) async {
  final results = await ytmusic.searchSongs(query);
  for (final result in results) {
    print('----------------------------------');
    print(
        '${result.name} | ${result.artist?.name} | ${result.artist?.artistId} | ${result.videoId} | ${result.album?.name} | ${result.album?.albumId} | ${result.thumbnails[0].url} | ${result.duration} ');
  }
}
