import 'package:flutter/material.dart';

class GridViewApple extends StatelessWidget {
  final List<Map<String, String>> items = [
    {'image': 'https://via.placeholder.com/150', 'label': 'Apple'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Orange'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Banana'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Grapes'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Pineapple'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Mango'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Strawberry'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Blueberry'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Watermelon'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Peach'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Kiwi'},
    {'image': 'https://via.placeholder.com/150', 'label': 'Papaya'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            childAspectRatio: 0.8,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Card(
              color: const Color.fromARGB(255, 112, 114, 118),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Picture
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      items[index]['image']!,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(height: 10),
                  // Label
                  Text(
                    items[index]['label']!,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
