import 'package:json_annotation/json_annotation.dart';

import 'result.dart';

part 'now_playing_model.g.dart';

@JsonSerializable()
class NowPlayingModel {
  List<Result>? results;

  NowPlayingModel({this.results});

  factory NowPlayingModel.fromJson(Map<String, dynamic> json) {
    return _$NowPlayingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NowPlayingModelToJson(this);
}
