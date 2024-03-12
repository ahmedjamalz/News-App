import 'package:flutter/material.dart';
import 'package:news_app/widgets/home_view.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
