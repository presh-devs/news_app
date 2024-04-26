import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class NewsListTileShimmer extends StatelessWidget {
  const NewsListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 150,
             
               decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(15),
        ),
            ),
            const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 20.0,
              decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
              margin: const EdgeInsets.only(bottom: 8.0),
            ),
             const SizedBox(height: 2),
            Container(
             width: 275,
              height: 15.0,
             decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
            )
          ],
        ),
      ),
    );
  }
}
