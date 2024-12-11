import 'package:flutter/material.dart';
import 'package:news_project/views/home_view.dart';

void main() {
  runApp(const NewsApp());
}

// final dio = Dio();

// void getHttp() async {
//   final response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=b0e6cecdad774d71889bfbf32b1ae6e2');
//         print(response);
// }

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeNewsView(),
    );
  }
}
