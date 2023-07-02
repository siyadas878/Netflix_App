// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'now_playing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NowPlayingModel _$NowPlayingModelFromJson(Map<String, dynamic> json) =>
    NowPlayingModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$NowPlayingModelToJson(NowPlayingModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
