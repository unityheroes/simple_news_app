import 'package:flutter/material.dart';
import 'package:simple_news_app/services/news_services.dart';

import 'package:simple_news_app/widgets/new_list_view_builder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.newsCategory});
  final NewsCategory newsCategory;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title:
              const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text("Simples "),
        Text(
          "NewsApp",
          style: TextStyle(color: Colors.lime, fontSize: 18),
        ),
      ])),
      body: CustomScrollView(
        slivers: [
          NewListViewBuilder(newsCategory: newsCategory),
        ],
      ),
    );
  }
}
