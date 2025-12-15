import 'package:flutter/material.dart';

class Gallery extends StatelessWidget {
  const Gallery({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> imageUrls = [
      "https://picsum.photos/300/300?image=10",
      "https://picsum.photos/300/300?image=20",
      "https://picsum.photos/300/300?image=30",
      "https://picsum.photos/300/300?image=40",
      "https://picsum.photos/300/300?image=50",
      "https://picsum.photos/300/300?image=60",
      "https://picsum.photos/300/300?image=70",
      "https://picsum.photos/300/300?image=80",
      "https://picsum.photos/300/300?image=90",
      "https://picsum.photos/300/300?image=100",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("Gallery")),

      body: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
          itemCount: imageUrls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,          // number of columns
            crossAxisSpacing: 10,       // space between columns
            mainAxisSpacing: 10,        // space between rows
            childAspectRatio: 1,        // width : height ratio
          ),
          itemBuilder: (context, index) {
            return Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  imageUrls[index],
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
