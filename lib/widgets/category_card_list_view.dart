import 'package:flutter/material.dart';
import 'package:simple_news_app/models/category_model.dart';
import 'package:simple_news_app/widgets/category_card.dart';

class CategoryCardListView extends StatelessWidget {
  const CategoryCardListView({
    super.key,
  });
  final List<CategoryModel> categorys = const [
    CategoryModel(
      categoryName: 'Business',
      imagePath: 'assets/business.avif',
    ),
    CategoryModel(
      categoryName: 'Entertaiment',
      imagePath: 'assets/entertaiment.avif',
    ),
    CategoryModel(
      categoryName: 'General',
      imagePath: 'assets/general.avif',
    ),
    CategoryModel(
      categoryName: 'Health',
      imagePath: 'assets/health.avif',
    ),
    CategoryModel(
      categoryName: 'Science',
      imagePath: 'assets/science.avif',
    ),
    CategoryModel(
      categoryName: 'Sports',
      imagePath: 'assets/sports.avif',
    ),
    CategoryModel(
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
