import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/news/domain/news.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.newsItem, this.onPressed,
  });

  final News newsItem;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed ,
        child: Container(
          // padding: const EdgeInsets.symmetric(vertical: 16),
          decoration:  BoxDecoration(
            // color: Colors.black,
            border: Border.all(color: Colors.grey),
             borderRadius: BorderRadius.circular(15)
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
                    imageUrl:
                        newsItem.urlToImage ?? 'http://via.placeholder.com/200x150',
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
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(newsItem.title ?? ''),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(newsItem.author ?? ''),),
              ),
               Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                 child: Align(
                    alignment: Alignment.centerLeft,
                  child: Text(formatPublishedTime(newsItem.publishedAt))),
               ),
              
            ],
          ),
        ),
      ),
    );
  }
}

String formatPublishedTime(String? publishedAt) {
  final publishedDateTime = DateTime.tryParse(publishedAt!);
  if (publishedDateTime == null) return "Just now";

  final difference = DateTime.now().difference(publishedDateTime);
  final days = difference.inDays;

  if (days >= 7) {
    return '${days ~/ 7}w'; 
  } else if (days >= 1) {
    return '${days}d'; 
  } else if (difference.inHours >= 1) {
    return '${difference.inHours}h'; 
  } else if (difference.inMinutes >= 1) {
    return '${difference.inMinutes}m'; 
  } else {
    return 'Just now'; 
  }
}
