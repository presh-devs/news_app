import 'dart:developer';

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
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child:
        ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            final AsyncValue<NewsResponse> responseAsync =
                ref.watch(fetchNewsProvider);
            return responseAsync.when(
                data: (response) => Text(response.articles[index].title!),
                error: (error, stck) => Text(error.toString()),
                loading: (() => const CircularProgressIndicator()));
          },
        ),
      ),
    );
  }
}
