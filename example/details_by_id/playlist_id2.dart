//VLPL5HzwBSLtm22jz6eaYZrk56-Eg8JNrwDA

import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await getPlaylist(ytmusic, 'VLPL5HzwBSLtm22jz6eaYZrk56-Eg8JNrwDA');
}

Future<void> getPlaylist(YTMusic ytmusic, String id) async {
  final results = await ytmusic.getPlaylist(id);
  final playlistVideos = await ytmusic.getPlaylistVideos(id);
  print('----------------------------------');
  print('${results.videoCount} | ${results.playlistId} | ${results.name} | ${results.type} | ${results.thumbnails[0].url}');
  print('----------------------------------');
  for (final video in playlistVideos) {
    print('${video.videoId} | ${video.name} | ${video.type} | ${video.thumbnails[0].url} ${video.duration}');
    print('');
  }
}