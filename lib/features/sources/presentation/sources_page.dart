import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/common_widgets/loading_widget.dart';
import 'package:news_app/features/sources/data/sources_respositiory.dart';

class SourcesPage extends ConsumerWidget {
  const SourcesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sources = ref.watch(getSourcesProvider);
    return sources.when(
        data: (response) {
          return Scaffold(
               appBar: AppBar(title: const Text('Sources'),),
            body: ListView.separated(
              itemCount: sources.value!.sources.length,
              itemBuilder: (BuildContext context, int index) {
                final source = sources.value!.sources[index];
                return ListTile(
                  title: Text(source.name),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  height: 50,
                );
              },
            ),
          );
        },
        error: (error, stck) => Text(error.toString()),
        loading: (() =>const LoadingWidget(title: "Sources",)),);
    
  }
}
