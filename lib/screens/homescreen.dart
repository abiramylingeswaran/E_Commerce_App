import 'package:e_commerce_app/featurefile/auth/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/featurefile/auth/screens/clip.dart';
import 'package:e_commerce_app/featurefile/share_widgets/bottom_bar.dart';
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
          Clip(),

          const SizedBox(height: 5),

          // GridView Section
          Expanded(child: GridViewApple()),

          // const BottomBar(
          //   currentIndex: 1,
          // ),
        ],
      ),
    );
  }
}
