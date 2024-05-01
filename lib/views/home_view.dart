import 'package:flutter/material.dart';
import 'package:simple_news_app/widgets/category_card_list_view.dart';

class HomeViews extends StatelessWidget {
  const HomeViews({super.key});

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
          ]),
        ),
        body: const CategoryCardListView());
  }
}
