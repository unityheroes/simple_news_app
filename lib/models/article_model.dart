class ArticleModel {
  final String title;
  final String? description;
  final String? image;
  final Source source;

  ArticleModel(
      {required this.title,
      required this.description,
      required this.source,
      required this.image});
}

class Source {
  final String? id;
  final String? name;
  Source({required this.id, required this.name});
}
