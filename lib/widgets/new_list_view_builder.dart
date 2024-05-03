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
  dynamic future;
  @override
  void initState() {
    super.initState();
    future = NewsServices().getNews(category: NewsCategory.technology);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(articles: snapshot.data!); // Handling null data
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Center(
                child:
                    Text("Oops! There was an error. Please try again later.")),
          );
        } else {
          // Handling the case when there is neither data nor an error
          return const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()),
          );
        }
      },
    );
  }
}
// if (isLoading) // loading indicator
    // {
    //    else {
    //   if (articles.isEmpty) // if list empity or error
    //   {
    //     return const SliverToBoxAdapter(
    //       child: Center(child: Text("opps ! ! ! There Was Error  try later ")),
    //     );
    //   } else // if list have data
    //   {
    //     return NewsListView(
    //       articles: articles,
    //     );
    //   }