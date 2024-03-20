import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_list.dart';
import 'package:news_app/widgets/newsList_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            elevation: 0,
            centerTitle: true,
            backgroundColor: Colors.transparent,
            title: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'News',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'Cloud',
                  style: TextStyle(
                      color: Colors.orange,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: CustomScrollView(slivers: [
              SliverToBoxAdapter(
                  child: SizedBox(
                      height: 80, width: 200, child: CategoryListView())),
              const SliverToBoxAdapter(
                  child: SizedBox(
                height: 32,
              )),
              NewsListViewBuilder(
                category: 'general',
              ),
            ]),
          ),
        ));
  }
}
