import 'package:flutter/material.dart';
import 'package:simple_news_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;
  const CategoryCard({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8),
      child: Container(
        height: 100,
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
    );
  }
}
