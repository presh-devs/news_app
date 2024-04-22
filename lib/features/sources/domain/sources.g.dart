// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sources.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourcesImpl _$$SourcesImplFromJson(Map<String, dynamic> json) =>
    _$SourcesImpl(
      id: json['id'] as String?,
      name: json['name'],
      description: json['description'],
      url: json['url'],
      category: json['category'],
      us: json['us'],
      language: json['language'],
    );

Map<String, dynamic> _$$SourcesImplToJson(_$SourcesImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'description': instance.description,
      'url': instance.url,
      'category': instance.category,
      'us': instance.us,
      'language': instance.language,
    };
