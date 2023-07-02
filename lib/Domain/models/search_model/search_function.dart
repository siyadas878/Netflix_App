import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:netflix/Domain/models/search_model/search_model.dart';
import '../popular_result_model/result.dart';

Future<List<dynamic>> getimageSearch() async {
  final response = await http.get(
    Uri.parse(
        'https://api.themoviedb.org/3/trending/all/day?api_key=ceb05cb35d63209923547efcbdf2d9df'),
  );

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = SearchModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}


Future<List<dynamic>> getimageSearchGrid(String search) async {
  final response = await http.get(Uri.parse(
      'https://api.themoviedb.org/3/search/movie?api_key=ceb05cb35d63209923547efcbdf2d9df&query=${search}'));

  if (response.statusCode == 200) {
    final jsondata = jsonDecode(response.body);
    final result = SearchModel.fromJson(jsondata);
    if (result.results != null) {
      return result.results!;
    }
  }

  List<Result> empty = [];
  return empty;
}
