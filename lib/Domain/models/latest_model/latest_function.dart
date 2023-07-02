import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/Domain/models/latest_model/result.dart';

import 'latest_model.dart';

Future<List<dynamic>> getLatest() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/top_rated?api_key=ceb05cb35d63209923547efcbdf2d9df&language=en-US&page=1'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = LatestModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}
