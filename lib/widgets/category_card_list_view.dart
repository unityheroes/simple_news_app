import 'package:flutter/material.dart';
import 'package:simple_news_app/widgets/category_card.dart';

class CategoryCardListView extends StatelessWidget {
  const CategoryCardListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: ((context, index) => const CategoryCard()),
      ),
    );
  }
}
