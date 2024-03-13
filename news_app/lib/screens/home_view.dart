import 'package:flutter/material.dart';

import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/widgets/category_list_view.dart';
import 'package:news_app/component/newsTile.dart';
import 'package:news_app/widgets/newsTile_list_view.dart';

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
            title: Row(
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
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                Expanded(child: CategoryListView()),
                SizedBox(
                  height: 32,
                ),
                Expanded(flex: 6, child: NewsTileListView()),
              ],
            ),
          ),
        ));
  }
}
