import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'latest_model.g.dart';

@JsonSerializable()
class LatestModel {
  List<Result>? results;

  LatestModel({this.results});

  factory LatestModel.fromJson(Map<String, dynamic> json) {
    return _$LatestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LatestModelToJson(this);
}
