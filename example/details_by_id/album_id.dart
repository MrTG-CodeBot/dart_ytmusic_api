import 'package:dart_ytmusic_api/yt_music.dart';

void main() async {

  final ytmusic = YTMusic();

  await ytmusic.initialize();

  await getAlbum(ytmusic, 'MPREb_nxMZfkLqk5S');
}


Future<void> getAlbum(YTMusic ytmusic, String id) async {
  final result = await ytmusic.getAlbum(id);
  print('${result.name} - ${result.artist.name} ${result.songs.length} ${result.type} ${result.thumbnails[0].url} ');
  for (final song in result.songs) {
    print('----------------------------------');
    print('${song.name} - ${song.videoId} ${song.artist?.name} ${song.type} ${song.thumbnails[0].url} ${song.duration}');
  }
}