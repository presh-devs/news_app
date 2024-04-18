import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/features/news/data/news_repository.dart';
import 'package:news_app/features/news/domain/news_response.dart';

class NewsPage extends ConsumerStatefulWidget {
  const NewsPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _NewsPageState();
}

class _NewsPageState extends ConsumerState<NewsPage> {
  @override
  Widget build(BuildContext context) {
    final AsyncValue<NewsResponse> responseAsync = ref.watch(fetchNewsProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text("Today's News"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.separated(
          itemCount: responseAsync.value!.articles.length,
          itemBuilder: (BuildContext context, int index) {
            return responseAsync.when(
                data: (response) {
                  final newsItem = response.articles[index];
                  return Container(
                    decoration: const BoxDecoration(
                      // color: Colors.black,
                      border: Border(
                          top: BorderSide.none,
                          left: BorderSide.none,
                          right: BorderSide.none,
                          bottom: BorderSide(color: Colors.grey)),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(15)),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                              imageUrl: newsItem.urlToImage ??
                                  'http://via.placeholder.com/200x150',
                              // placeholder: (context, url) =>
                              // 'https://picsum.photos/200/300',
                              fit: BoxFit.fill,
                              // width: 200,
                              // height: 200,
                              errorWidget: (context, url, error) =>
                                  const Icon(Icons.image_not_supported),
                            ),
                          ),
                        ),
                        Text(newsItem.title ?? ''),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text('data'),
                            IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.more_horiz))
                          ],
                        )
                      ],
                    ),
                  );
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
