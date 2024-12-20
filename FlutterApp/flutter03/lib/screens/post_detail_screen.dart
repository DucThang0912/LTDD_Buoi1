import 'package:flutter/material.dart';

class PostDetailScreen extends StatelessWidget {
  final int postId;

  const PostDetailScreen(this.postId, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chi tiết bài viết'),
      ),
      body: Center(
        child: Text('Nội dung bài viết với ID: $postId'),
      ),
    );
  }
} 