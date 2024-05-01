import 'package:flutter/material.dart';
import 'package:simple_news_app/views/home_view.dart';

void main() {
  runApp(const SimpleNewsApp());
}

class SimpleNewsApp extends StatelessWidget {
  const SimpleNewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: HomeViews());
  }
}
