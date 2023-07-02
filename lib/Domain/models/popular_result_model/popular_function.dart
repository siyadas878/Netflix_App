import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/Domain/models/popular_result_model/popular_result_model.dart';

import 'result.dart';

Future<List<Result>> getImagePopular() async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/movie/popular?api_key=ceb05cb35d63209923547efcbdf2d9df'));
  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = PopularResultModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }
  List<Result> empty = [];
  return empty;
}
