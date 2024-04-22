// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sources_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceResponseImpl _$$SourceResponseImplFromJson(Map<String, dynamic> json) =>
    _$SourceResponseImpl(
      sources: (json['sources'] as List<dynamic>)
          .map((e) => Sources.fromJson(e as Map<String, dynamic>))
          .toList(),
      errors: (json['errors'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$SourceResponseImplToJson(
        _$SourceResponseImpl instance) =>
    <String, dynamic>{
      'sources': instance.sources,
      'errors': instance.errors,
    };
