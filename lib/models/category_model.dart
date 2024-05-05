import 'package:simple_news_app/services/news_services.dart';

class CategoryModel {
  final NewsCategory newsCategory;

  final String imagePath;
  final String categoryName;

  const CategoryModel(
      {required this.imagePath,
      required this.categoryName,
      required this.newsCategory});
}
