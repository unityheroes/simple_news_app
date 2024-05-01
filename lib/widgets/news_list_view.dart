import 'package:flutter/material.dart';
import 'package:simple_news_app/widgets/news_post.dart';

class NewsListView extends StatelessWidget {
  const NewsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, index) {
      return const Padding(
        padding: EdgeInsets.only(top: 8),
        child: NewsPost(),
      );
    }, childCount: 10));
  }
}
