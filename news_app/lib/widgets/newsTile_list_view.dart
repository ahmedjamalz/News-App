import 'package:flutter/material.dart';
import 'package:news_app/component/newsTile.dart';

class NewsTileListView extends StatelessWidget {
  const NewsTileListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      itemBuilder: (context, index) {
        return NewsTileList();
      },
    );
  }
}
