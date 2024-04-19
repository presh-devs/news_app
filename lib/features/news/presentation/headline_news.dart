import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/common_widgets/news_card.dart';
import 'package:news_app/features/news/data/news_repository.dart';
import 'package:news_app/features/news/domain/news_response.dart';
import 'package:news_app/features/news/presentation/news_page.dart';

class HeadlineNewsPage extends ConsumerWidget {
  const HeadlineNewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
     final AsyncValue<NewsResponse> responseAsync = ref.watch(fetchHeadlinesNewsProvider(  country: 'us'));

    return Scaffold(
      appBar: AppBar(
        title: const Text("Headline News"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: responseAsync.value?.articles.length ?? 0,
          itemBuilder: (BuildContext context, int index) {
            return responseAsync.when(
                data: (response) {
                  final newsItem = response.articles[index];
                  return  NewsCard(newsItem: newsItem);
                },
                error: (error, stck) => Text(error.toString()),
                loading: (() => const CircularProgressIndicator()));
          },
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 50,
            );
          },
        ),
      ),
    );
  }
}