// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestModel _$LatestModelFromJson(Map<String, dynamic> json) => LatestModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$LatestModelToJson(LatestModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
