

import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    super.key, required this.title,
  });
final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:  Text(title),),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Center(child: CircularProgressIndicator()),
          SizedBox(height: 10,),
          Text('Loading...')
        ],
      ),
    );
  }
}
