import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';

class NewsTileList extends StatelessWidget {
  const NewsTileList({
    super.key,
    required this.articleModel,
  });
  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.network(articleModel.image ?? ''),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        Text(
          articleModel.description ?? '',
          style: const TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 5,
        )
      ],
    );
  }
}
