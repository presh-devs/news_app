library core;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'news.dart';

part 'news_response.freezed.dart';
part 'news_response.g.dart';

@freezed
class NewsResponse with _$NewsResponse {
  factory NewsResponse({
    
    required List<News> articles,
    required int totalResults,
   
    @Default([]) List<String> errors,
  }) = _NewsResponse;

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);
}

extension TMDBMoviesResponseX on NewsResponse {
  //@late
  bool get isEmpty => !hasResults();

  bool hasResults() {
    return articles.isNotEmpty;
  }

  bool hasErrors() {
    return errors.isNotEmpty;
  }
}