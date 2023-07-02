import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'popular_result_model.g.dart';

@JsonSerializable()
class PopularResultModel {
  List<Result>? results;

  PopularResultModel({this.results});

  factory PopularResultModel.fromJson(Map<String, dynamic> json) {
    return _$PopularResultModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PopularResultModelToJson(this);
}
