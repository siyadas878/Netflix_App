import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/Domain/models/now_playing/result.dart';

import 'now_playing_model.dart';

Future<List<dynamic>> GetNowPlaying() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/now_playing?api_key=ceb05cb35d63209923547efcbdf2d9df&language=en-US&page=1'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = NowPlayingModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}
