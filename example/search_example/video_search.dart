import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await searchVideos(ytmusic, 'sweather weather');
}

Future<void> searchVideos(YTMusic ytmusic, String query) async {
  final results = await ytmusic.searchVideos(query);
  for (final result in results) {
    print('----------------------------------');
    print('${result.name} - ${result.videoId} ${result.type} ${result.thumbnails[0].url} ${result.artist.name}');
  }
}