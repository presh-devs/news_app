import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/common_widgets/loading_widget.dart';
import 'package:news_app/common_widgets/sources_shimmer.dart';
import 'package:news_app/features/sources/data/sources_respositiory.dart';
import 'package:news_app/routing/app_router.dart';

class SourcesPage extends ConsumerWidget {
  const SourcesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final  responseAsync =
        ref.watch(getSourcesProvider);
  
    return Scaffold(
      appBar: AppBar(
        title: const Text("Headline News"),
        // centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all( 16.0),
        child: ListView.builder(
          // itemCount: responseAsync.value!.sources.length ,
          itemBuilder: (BuildContext context, int index) {
            return responseAsync.when(
                data: (response) {
                 
                  final sourceItem = response.sources[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 16.0),
                    child: ListTile(
                      style: ListTileStyle.list,
                      title: Text(sourceItem.name),
                      subtitle: Text(sourceItem.description),
                      shape: const RoundedRectangleBorder(
                        side: BorderSide(
                          color: Colors.grey
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      
                    ),
                  );

                  // return const SourcesListTileShimmer();
                },
             error: (error, stck) =>  Text(error.toString()),
                loading: (() => const SourcesListTileShimmer()));
           
          },
          // separatorBuilder: (context, index) => const SizedBox(height: 16,),
        ),
      ),
    );
  }
}