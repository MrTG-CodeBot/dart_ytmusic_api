import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await getPlaylist(ytmusic, 'PL5HzwBSLtm22jz6eaYZrk56-Eg8JNrwDA');
}

Future<void> getPlaylist(YTMusic ytmusic, String id) async {
  final results = await ytmusic.getPlaylist(id);
  print('----------------------------------');
  print('${results.videoCount} | ${results.playlistId} | ${results.name} | ${results.type} | ${results.thumbnails[0].url}');
  
}