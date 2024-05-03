import 'package:flutter/material.dart';
import 'package:simple_news_app/models/article_model.dart'; // Import ArticleModel
import 'package:simple_news_app/widgets/news_post.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;

  const NewsListView({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 8),
            child: NewsPost(articleModel: articles[index]),
          );
        },
        childCount: articles.length,
      ),
    );
  }
}
