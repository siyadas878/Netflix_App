import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/Domain/models/trending/trending_model.dart';
import '../popular_result_model/result.dart';

Future<List<dynamic>> getTrending() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/trending/all/week?api_key=ceb05cb35d63209923547efcbdf2d9df'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = TrendingModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}
