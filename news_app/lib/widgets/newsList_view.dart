import 'package:flutter/material.dart';
import 'package:news_app/component/newsTile.dart';
import 'package:news_app/models/article_model.dart';

class NewsListView extends StatelessWidget {
  final List<ArticleModel> articles;
  NewsListView({super.key, required this.articles});
  @override
  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: articles.length,
            (context, index) {
      return Padding(
        padding: const EdgeInsets.only(bottom: 15),
        child: NewsTile(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
