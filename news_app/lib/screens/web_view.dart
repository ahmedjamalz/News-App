import 'package:flutter/material.dart';
import 'package:news_app/models/article_model.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewArticle extends StatelessWidget {
  const WebViewArticle({super.key, required this.articleModel});
  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(articleModel.title),
          elevation: 0,
          backgroundColor: Colors.black,
        ),
        body: WebView(
          initialUrl: articleModel.url,
          javascriptMode: JavascriptMode.unrestricted,
        ));
  }
}
