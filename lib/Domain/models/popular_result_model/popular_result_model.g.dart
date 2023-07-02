// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PopularResultModel _$PopularResultModelFromJson(Map<String, dynamic> json) =>
    PopularResultModel(
      results: (json['results'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PopularResultModelToJson(PopularResultModel instance) =>
    <String, dynamic>{
      'results': instance.results,
    };
