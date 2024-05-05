import 'package:flutter/material.dart';
import 'package:simple_news_app/models/category_model.dart';
import 'package:simple_news_app/services/news_services.dart';
import 'package:simple_news_app/widgets/category_card.dart';

class CategoryCardListView extends StatelessWidget {
  const CategoryCardListView({
    super.key,
  });
  final List<CategoryModel> categorys = const [
    CategoryModel(
      newsCategory: NewsCategory.business,
      categoryName: 'Business',
      imagePath: 'assets/business.avif',
    ),
    CategoryModel(
      newsCategory: NewsCategory.entertainment,
      categoryName: 'Entertaiment',
      imagePath: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      newsCategory: NewsCategory.general,
      categoryName: 'General',
      imagePath: 'assets/general.avif',
    ),
    CategoryModel(
      newsCategory: NewsCategory.health,
      categoryName: 'Health',
      imagePath: 'assets/health.avif',
    ),
    CategoryModel(
      newsCategory: NewsCategory.science,
      categoryName: 'Science',
      imagePath: 'assets/science.avif',
    ),
    CategoryModel(
      newsCategory: NewsCategory.sports,
      categoryName: 'Sports',
      imagePath: 'assets/sports.avif',
    ),
    CategoryModel(
      newsCategory: NewsCategory.technology,
      categoryName: 'Technology',
      imagePath: 'assets/technology.jpeg',
    )
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categorys.length,
        itemBuilder: ((context, index) =>
            CategoryCard(category: categorys[index])),
      ),
    );
  }
}
