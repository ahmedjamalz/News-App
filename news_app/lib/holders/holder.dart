// import 'package:flutter/material.dart';
// import 'package:news_app/models/article_model.dart';
// import 'package:news_app/screens/web_view.dart';
// import 'package:webview_flutter/webview_flutter.dart';

// class NewsTile extends StatelessWidget {
//   const NewsTile({
//     super.key,
//     required this.articleModel,
//   });
//   final ArticleModel articleModel;
//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: () {
//         Navigator.of(context).push(MaterialPageRoute(
//           builder: (context) {
//             return WebViewPage();
//           },
//         ));
//       },
//       child: Column(
//         children: [
//           Image.network(articleModel.image ?? ''),
//           const SizedBox(
//             height: 12,
//           ),
//           Text(
//             articleModel.title,
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//             style: const TextStyle(
//                 color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
//           ),
//           Text(
//             articleModel.description ?? '',
//             style: const TextStyle(color: Colors.grey),
//           ),
//           const SizedBox(
//             height: 5,
//           )
//         ],
//       ),
//     );
//   }
// }
