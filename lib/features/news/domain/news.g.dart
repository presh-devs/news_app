// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsImpl _$$NewsImplFromJson(Map<String, dynamic> json) => _$NewsImpl(
      author: json['author'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      publishedAt: json['publishedAt'] as String,
      urlToImage: json['urlToImage'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$NewsImplToJson(_$NewsImpl instance) =>
    <String, dynamic>{
      'author': instance.author,
      'title': instance.title,
      'description': instance.description,
      'publishedAt': instance.publishedAt,
      'urlToImage': instance.urlToImage,
      'content': instance.content,
    };
