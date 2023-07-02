import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'up_coming_model.g.dart';

@JsonSerializable()
class UpComingModel {
  List<Result>? results;

  UpComingModel({this.results});

  factory UpComingModel.fromJson(Map<String, dynamic> json) {
    return _$UpComingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UpComingModelToJson(this);
}
