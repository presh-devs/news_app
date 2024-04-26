import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/common_widgets/loading_widget.dart';
import 'package:news_app/common_widgets/news_card.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: ListView.builder(
          // itemCount: totalResults ,
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
                loading: (() => const CircularProgressIndicator()));
           
          },
          // separatorBuilder: (context, index) => const SizedBox(height: 16,),
        ),
      ),
    );
  }
}


 // Scaffold(
                  //   appBar: AppBar(
                  //     title: const Text("Today's News"),
                  //     // centerTitle: true,
                  //   ),
                  //   body: Padding(
                  //     padding: const EdgeInsets.all(16.0),
                  //     child: ListView.separated(
                  //       itemCount: responseAsync.value?.articles.length ?? 0,
                  //       itemBuilder: (BuildContext context, int index) {
                  //         final newsItem = response.articles[index];
                  //                return NewsCard(
                  //                 newsItem: newsItem,
                  //                 onPressed: () => context.goNamed(
                  //                   AppRoute.forYouNewsDetails.name,
                  //                   extra: newsItem,
                  //                 ),
                  //               );

                  //       },
                  //       separatorBuilder: (BuildContext context, int index) {
                  //         return const SizedBox(
                  //           height: 50,
                  //         );
                  //       },
                  //     ),
                  //   ),
                  // );