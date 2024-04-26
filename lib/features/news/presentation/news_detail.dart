
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:news_app/features/news/domain/news.dart';
import 'package:news_app/utils/webview_controller.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage( {super.key, required this.news,});
final News news;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final webviewController = ref.watch(webviewControllerProvider(url: news.url!));
    return  Scaffold(
      appBar: AppBar(
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: WebViewWidget(controller: webviewController,),
      ),
    );
  }
}