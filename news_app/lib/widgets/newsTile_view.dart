import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/component/newsTile.dart';
import 'package:news_app/models/article_model.dart';
import 'package:news_app/services/news_services.dart';

class NewsTileListView extends StatefulWidget {
  const NewsTileListView({super.key});

  @override
  State<NewsTileListView> createState() => _NewsTileListViewState();
}

class _NewsTileListViewState extends State<NewsTileListView> {
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return isLoading
        ? const SliverToBoxAdapter(
            child: Center(child: CircularProgressIndicator()))
        : SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 15),
              child: NewsTileList(
                articleModel: articles[index],
              ),
            );
          }));
  }
}
