
import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await getSong(ytmusic, 'B2UBMTA57JI');
}

Future<void> getSong(YTMusic ytmusic, String id) async {
  final result = await ytmusic.getSong(id);
  print('----------------------------------');
  print('${result.name} - ${result.videoId} ${result.artist?.name} ${result.type} ${result.thumbnails[0].url} ${result.duration}');
}