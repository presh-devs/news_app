import 'package:dio/dio.dart';
import 'package:news_app/env/env.dart';
import 'package:news_app/features/sources/domain/sources_response.dart';
import 'package:news_app/utils/dio_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sources_respositiory.g.dart';

class SourcesRepository {
  SourcesRepository({required this.client, required this.apiKey});

  final Dio client;
  final String apiKey;

  Future<SourceResponse> getSources() async {
    final uri = Uri(
        scheme: 'https',
        host: 'newsapi.org',
        path: '/v2/top-headlines/sources',
        queryParameters: {
          'apiKey': apiKey,
        });

    final response = await client.getUri(uri);

    return SourceResponse.fromJson(response.data);
  }
}

@riverpod
SourcesRepository sourcesRepository(SourcesRepositoryRef ref) =>
    SourcesRepository(client: ref.watch(dioProvider), apiKey: Env.newsApiKey);

@riverpod
Future<SourceResponse> getSources(GetSourcesRef ref) {
  final sourceRepo = ref.watch(sourcesRepositoryProvider);
  return sourceRepo.getSources();
}
