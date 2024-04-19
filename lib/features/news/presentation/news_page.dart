import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/common_widgets/news_card.dart';
import 'package:news_app/features/news/data/news_repository.dart';
import 'package:news_app/features/news/domain/news.dart';
import 'package:news_app/features/news/domain/news_response.dart';

class NewsPage extends ConsumerStatefulWidget {
  const NewsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewsPageState();
}

class _NewsPageState extends ConsumerState<NewsPage> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<NewsResponse> responseAsync = ref.watch(fetchAllNewsProvider);
   
    return Scaffold(
      appBar: AppBar(
        title: const Text("Today's News"),
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
                  return NewsCard(newsItem: newsItem);
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
