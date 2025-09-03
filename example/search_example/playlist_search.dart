import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await searchPlaylists(ytmusic, 'romantic malayalam songs');
}

Future<void> searchPlaylists(YTMusic ytmusic,String query) async {
  final results = await ytmusic.searchPlaylists(query);
  for (final result in results) {
    print('----------------------------------');
    print('${result.name} - ${result.playlistId} ${result.type} ${result.thumbnails[0].url}');
  }
}