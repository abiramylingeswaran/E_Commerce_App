import 'package:e_commerce_app/featurefile/auth/screens/clip.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/featurefile/auth/screens/gridview.dart';

class FeedPage extends StatelessWidget {
  const FeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Feed Page'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 200,
            child: Clip(),
          ),
          const SizedBox(height: 5), 
        
          Expanded(
            child: GridViewApple(),
          ),
        ],
      ),
    );
  }
}
