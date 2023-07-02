import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  List<Result>? results;

  SearchModel({this.results});

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
