import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';

class Category extends StatelessWidget {
  const Category({
    super.key,
    required this.category,
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 17),
      child: Container(
        height: 100,
        width: 180,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(category.image), fit: BoxFit.fill),
            color: Colors.blue,
            borderRadius: BorderRadius.circular(12)),
        child: Center(
            child: Text(
          category.text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
          ),
        )),
      ),
    );
  }
}
