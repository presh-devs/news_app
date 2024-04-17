library core;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
class News with _$News {
  factory News({
    required String author,
    required String title,
    required String description,
    required String publishedAt,
    required String urlToImage,
    required String content,
  }) = _News;

  factory News.fromJson(Map<String, dynamic> json) =>
      _$NewsFromJson(json);
}