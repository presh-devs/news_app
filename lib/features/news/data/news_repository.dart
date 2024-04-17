import 'package:dio/dio.dart';
import 'package:news_app/env/env.dart';
import 'package:news_app/features/news/domain/news.dart';
import 'package:news_app/utils/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'news_repository.g.dart';

class NewsRepository {
  NewsRepository({required this.client, required this.apiKey});
  final Dio client;
  final String apiKey;

  // search for movies that match a given query (paginated)
  // Future<List<News>> searchMovies({required int page, String query = ''}) {
  //   return [];
  // }

  // // get the movie for a given id
  // Future<News> movie({required int movieId}){

  // }
}

@riverpod
NewsRepository newsRepository(NewsRepositoryRef ref) =>
    NewsRepository(client: ref.watch(dioProvider), apiKey: Env.newsApiKey);
