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

  Future<NewsResponse> fetchAllNews(int? page) async {
    log('-----> fetching all news');
    final uri = Uri(
        scheme: 'https',
        host: 'newsapi.org',
        path: '/v2/everything',
        queryParameters: {
          'apiKey': apiKey,
          'page': "$page",
          'pageSize':'20',
          'q': 'apple',
          'from': '2024 - 04 - 16',
          'sortBy': 'popularity',
        });
       log(uri.toString());
    final response = await client.getUri(uri);
   
    return NewsResponse.fromJson(response.data);
  }

    Future<NewsResponse> fetchHeadlineNews({String? category, String? country , int? page }) async {
    final uri = Uri(
        scheme: 'https',
        host: 'newsapi.org',
        path: '/v2/top-headlines',
        queryParameters: {
          'pageSize':'20',
          'apiKey': apiKey,
           'page':'$page',
          'category': category,
          'country':'$country'
          
        });
       
    final response = await client.getUri(uri);
   
    return NewsResponse.fromJson(response.data);
  }
}

@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref) =>
    NewsRepository(client: ref.watch(dioProvider), apiKey: Env.newsApiKey);

@riverpod
Future<NewsResponse> fetchAllNews(FetchAllNewsRef ref,{int? page}) {
  final newsRepo = ref.watch(newsRepositoryProvider);
  return newsRepo.fetchAllNews(page);
}

@riverpod
Future<NewsResponse> fetchHeadlinesNews(FetchHeadlinesNewsRef ref,{String? category, String? country , int? page} ) {
  final newsRepo = ref.watch(newsRepositoryProvider);
  
  return newsRepo.fetchHeadlineNews( category: category, country: country, page: page);
}