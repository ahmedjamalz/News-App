import 'package:flutter/material.dart';
import 'package:news_app/component/category.dart';
import 'package:news_app/models/categoryModel.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/business.avif', text: 'Business'),
    CategoryModel(image: 'assets/general.avif', text: 'General'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Entertaiment'),
    CategoryModel(image: 'assets/health.avif', text: 'Health'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Science'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Sports'),
    CategoryModel(image: 'assets/entertaiment.avif', text: 'Technology'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return Category(
          category: categories[index],
        );
      },
    );
  }
}
