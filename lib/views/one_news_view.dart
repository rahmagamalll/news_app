import 'package:flutter/material.dart';
import 'package:news_project/models/artical_model.dart';
import 'package:news_project/widgets/one_news_page.dart';

class OneNewsView extends StatelessWidget {
  final ArticalModel articalmodel;
  OneNewsView({required this.articalmodel});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OneNews(articalmodel: articalmodel),
    );
  }
}
