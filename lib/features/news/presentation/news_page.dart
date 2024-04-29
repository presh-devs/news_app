import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/common_widgets/loading_widget.dart';
import 'package:news_app/common_widgets/news_card.dart';
import 'package:news_app/common_widgets/news_shimmer.dart';
import 'package:news_app/features/news/data/news_repository.dart';
import 'package:news_app/features/news/domain/news_response.dart';
import 'package:news_app/routing/app_router.dart';

class NewsPage extends ConsumerWidget {
  const NewsPage({super.key});
  static const pageSize = 20;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final AsyncValue<NewsResponse> responseAsync =
        ref.read(fetchAllNewsProvider(page: 1));
    final   totalResults = responseAsync.valueOrNull?.totalResults;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Today's News"),
        // centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: () {
          return ref.refresh(fetchAllNewsProvider(page: 1).future);
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: ListView.builder(
             itemCount: totalResults ,
            itemBuilder: (BuildContext context, int index) {
              final page = index ~/ pageSize + 1;
              final indexInPage = index % pageSize;
        
              final AsyncValue<NewsResponse> responseAsync =
                  ref.watch(fetchAllNewsProvider(page: page));
              return responseAsync.when(
                  data: (response) {
                    if (indexInPage >= response.articles.length) {
                      return null;
                    }
                    final newsItem = response.articles[indexInPage];
                    return NewsCard(
                      newsItem: newsItem,
                      onPressed: () => context.goNamed(
                        AppRoute.forYouNewsDetails.name,
                        extra: newsItem,
                      ),
                    );
                  },
                  error: (error, stck) => Text(error.toString()),
                  loading: (() => const NewsListTileShimmer()));
             
            },
            // separatorBuilder: (context, index) => const SizedBox(height: 16,),
          ),
        ),
      ),
    );
  }
}

