import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsList_view_builder.dart';

class CategotyView extends StatelessWidget {
  const CategotyView({super.key, required this.category});
  final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: CustomScrollView(slivers: [
          SliverToBoxAdapter(
              child: SizedBox(
            height: 32,
          )),
          NewsListViewBuilder(
            category: category,
          ),
        ]),
      ),
    );
  }
}
