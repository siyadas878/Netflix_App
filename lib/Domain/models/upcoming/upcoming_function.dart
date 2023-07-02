import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/Domain/models/upcoming/result.dart';
import 'package:netflix/Domain/models/upcoming/up_coming_model.dart';

Future<List<dynamic>> getUpComing() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/movie/upcoming?api_key=ceb05cb35d63209923547efcbdf2d9df&language=en-US&page=1'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = UpComingModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}
