import 'package:flutter/material.dart';

class baitap2 extends StatelessWidget {
  // Danh sách dữ liệu bài viết
  final List<Map<String, String>> posts = List.generate(
    20,
        (index) => {
      "title": "Bài viết ${index + 1}",
      "description": "Mô tả ngắn gọn về bài viết ${index + 1}",
      "imageUrl":
      "https://via.placeholder.com/150x100.png?text=Hình+ảnh+Bài+viết+${index + 1}"
    },
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Trang chủ"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView.builder(
            itemCount: posts.length,
            itemBuilder: (context, index) {
              final post = posts[index];
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  elevation: 3,
                  child: ListTile(
                    leading: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        post['imageUrl']!,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(post['title']!,
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    subtitle: Text(post['description']!),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(baitap2());
}
