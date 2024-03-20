import 'dart:convert';

class ArticleModel {
  final String title;
  final String? description;
  final String? image;
  final String url;
  ArticleModel(
      {required this.url,
      required this.description,
      required this.image,
      required this.title});

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
      description: json['description'],
      image: json['urlToImage'],
      title: json['title'],
      url: json['url'],
    );
  }
}
