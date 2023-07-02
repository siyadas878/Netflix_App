// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'up_coming_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UpComingModel _$UpComingModelFromJson(Map<String, dynamic> json) =>
    UpComingModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UpComingModelToJson(UpComingModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
