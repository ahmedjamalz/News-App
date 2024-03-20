import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/screens/category_view.dart';

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
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) {
              return CategotyView(
                category: category.categoryName,
              );
            },
          ));
        },
        child: Container(
          height: 80,
          width: 150,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(category.image), fit: BoxFit.fill),
              color: Colors.blue,
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
          )),
        ),
      ),
    );
  }
}
