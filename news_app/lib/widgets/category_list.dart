import 'package:flutter/material.dart';
import 'package:news_app/component/category.dart';
import 'package:news_app/models/categoryModel.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/general.avif', categoryName: 'General'),
    CategoryModel(image: 'assets/sports.avif', categoryName: 'Sports'),
    CategoryModel(image: 'assets/business.avif', categoryName: 'Business'),
    CategoryModel(
        image: 'assets/entertaiment.avif', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/science.avif', categoryName: 'Science'),
    CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/health.avif', categoryName: 'Health'),
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
