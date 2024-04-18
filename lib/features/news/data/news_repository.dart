import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:news_app/env/env.dart';
import 'package:news_app/features/news/domain/news_response.dart';
import 'package:news_app/utils/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

class NewsRepository {
  NewsRepository({required this.client, required this.apiKey});
  final Dio client;
  final String apiKey;

  Future<NewsResponse> fetchNews() async {
    final uri = Uri(
        scheme: 'https',
        host: 'newsapi.org',
        path: '/v2/everything',
        queryParameters: {
          'apiKey': apiKey,
          'q': 'apple',
          'from': '2024 - 04 - 16',
          'sortBy': 'popularity',
        });
       
    final response = await client.getUri(uri);
   
    return NewsResponse.fromJson(response.data);
  }
}

@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref) =>
    NewsRepository(client: ref.watch(dioProvider), apiKey: Env.newsApiKey);

@riverpod
Future<NewsResponse> fetchNews(FetchNewsRef ref, ) {
  final newsRepo = ref.watch(newsRepositoryProvider);
  return newsRepo.fetchNews();
}