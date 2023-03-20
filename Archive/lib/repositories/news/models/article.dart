import 'package:forestvpn_test/repositories/news/mock_news_repository.dart';

class Article {

  final String id;
  final String title;
  final DateTime publicationDate;
  final String imageUrl;
  bool readed;
  final String? description;

  Article({
    required this.id,
    required this.title,
    required this.publicationDate,
    required this.imageUrl,
    this.readed = false,
    this.description,
  });
}
