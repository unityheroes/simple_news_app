import 'package:dio/dio.dart';
import 'package:simple_news_app/models/article_model.dart';

enum NewsCategory {
  business,
  entertainment,
  general,
  health,
  science,
  sports,
  technology
}

class NewsServices {
  final Dio dio = Dio();
  final String apiKey = "apiKey=1fec6344f54441c8820e8e6faa7b835a";
  final String country = "country=us";
  final Map<NewsCategory, String> categoryMap = {
    NewsCategory.business: "business",
    NewsCategory.entertainment: "entertainment",
    NewsCategory.general: "general",
    NewsCategory.health: "health",
    NewsCategory.science: "science",
    NewsCategory.sports: "sports",
    NewsCategory.technology: "technology"
  };

  Future<List<ArticleModel>> getNews({required NewsCategory category}) async {
    try {
      String selectedCategory = categoryMap[category]!;
      Response response = await dio.get(
          "https://newsapi.org/v2/top-headlines?$apiKey&$country&category=$selectedCategory");
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        if (article["source"]["name"] != "[Removed]") {
          ArticleModel articleobject = ArticleModel(
              title: article["title"],
              description: article["description"],
              source: Source(
                  id: article["source"]["id"], name: article["source"]["name"]),
              image: article["urlToImage"]);
          articlesList.add(articleobject);
        }
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
