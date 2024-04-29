import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class SourcesListTileShimmer extends StatelessWidget {
  const SourcesListTileShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.black26,
      highlightColor: Colors.black12,
      child: Padding(
        padding: const EdgeInsets.symmetric( vertical: 8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           Container(
              width: 150,
              height: 20.0,
              decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
              margin: const EdgeInsets.only(bottom: 8.0),
            ),
            // const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 10.0,
              decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
              margin: const EdgeInsets.only(bottom: 8.0),
            ),
            // const SizedBox(height: 8),
            Container(
              width: double.infinity,
              height: 10.0,
              decoration:  BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(5),
        ),
              margin: const EdgeInsets.only(bottom: 8.0),
            ),
            //  const SizedBox(height: 2),
            Container(
             width: 275,
              height: 10.0,
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
