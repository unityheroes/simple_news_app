import 'package:flutter/material.dart';
import 'package:simple_news_app/models/category_model.dart';
import 'package:simple_news_app/views/category_view.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return CategoryView(newsCategory: category.newsCategory);
        }));
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8, bottom: 2),
        child: Container(
          height: 80,
          width: 190,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(category.imagePath),
              fit: BoxFit.fill,
            ),
            borderRadius: BorderRadius.circular(8),
          ),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          )),
        ),
      ),
    );
  }
}
