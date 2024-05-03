import 'package:flutter/material.dart';
import 'package:simple_news_app/models/article_model.dart';
import 'package:simple_news_app/services/news_services.dart';
import 'package:simple_news_app/widgets/news_list_view.dart';

class NewListViewBuilder extends StatefulWidget {
  const NewListViewBuilder({
    super.key,
  });

  @override
  State<NewListViewBuilder> createState() => _NewListViewBuilderState();
}

class _NewListViewBuilderState extends State<NewListViewBuilder> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsServices().getNews(category: NewsCategory.general);
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) // loading indicator
    {
      return const SliverToBoxAdapter(
          child: Center(child: CircularProgressIndicator()));
    } else {
      if (articles.isEmpty) // if list empity or error
      {
        return const SliverToBoxAdapter(
          child: Center(child: Text("opps ! ! ! There Was Error  try later ")),
        );
      } else // if list have data
      {
        return NewsListView(
          articles: articles,
        );
      }
    }
  }
}
