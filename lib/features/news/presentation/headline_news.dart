import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/common_widgets/loading_widget.dart';
import 'package:news_app/common_widgets/news_card.dart';
import 'package:news_app/features/news/data/news_repository.dart';
import 'package:news_app/features/news/domain/news_response.dart';
import 'package:news_app/routing/app_router.dart';

class HeadlineNewsPage extends ConsumerWidget {
  const HeadlineNewsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<NewsResponse> responseAsync =
        ref.watch(fetchHeadlinesNewsProvider(country: 'us'));

    return responseAsync.when(
        data: (response) {
          return Scaffold(
            appBar: AppBar(title: Text('Healine News'),),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                itemCount: responseAsync.value?.articles.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final newsItem = responseAsync.value!.articles[index];
                  return NewsCard(newsItem: newsItem, onPressed: () => context.goNamed(
                            AppRoute.headlineNewsDetails.name,
                            extra: newsItem,
                          ),);
                },
                separatorBuilder: (BuildContext context, int index) {
                  return const SizedBox(
                    height: 50,
                  );
                },
              ),
            ),
          );
        },
        error: (error, stck) => Text(error.toString()),
        loading: (() => const LoadingWidget(title: 'Headline News')));
  }
}
