import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/common_widgets/loading_widget.dart';
import 'package:news_app/common_widgets/news_card.dart';
import 'package:news_app/features/news/data/news_repository.dart';
import 'package:news_app/features/news/domain/news_response.dart';
import 'package:news_app/routing/app_router.dart';

class NewsPage extends ConsumerStatefulWidget {
  const NewsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewsPageState();
}

class _NewsPageState extends ConsumerState<NewsPage> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<NewsResponse> responseAsync =
        ref.watch(fetchAllNewsProvider);

    return responseAsync.when(
        data: (response) {
          return Scaffold(
            appBar: AppBar(
              title: const Text("Today's News"),
              // centerTitle: true,
            ),
            body: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.separated(
                itemCount: responseAsync.value?.articles.length ?? 0,
                itemBuilder: (BuildContext context, int index) {
                  final newsItem = response.articles[index];
                         return NewsCard(
                          newsItem: newsItem,
                          onPressed: () => context.goNamed(
                            AppRoute.forYouNewsDetails.name,
                            extra: newsItem,
                          ),
                        );
                  
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
        loading: (() => const LoadingWidget(title: "Today's News")));
    
  }
}
