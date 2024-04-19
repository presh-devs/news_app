
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:news_app/features/news/domain/news.dart';

class NewsCard extends StatelessWidget {
  const NewsCard({
    super.key,
    required this.newsItem,
  });

  final News newsItem;

  @override
  Widget build(BuildContext context) {
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
  }
}
