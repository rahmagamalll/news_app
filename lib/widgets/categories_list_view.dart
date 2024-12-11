import 'package:flutter/material.dart';
import 'package:news_project/models/listhorizentalnewsmodel.dart';
import 'package:news_project/widgets/category_component.dart';

List<NewsItem> items = const [
  NewsItem(imageName: 'assets/general.avif', name: 'General'),
  NewsItem(imageName: 'assets/sports.avif', name: 'Sports'),
  NewsItem(imageName: 'assets/entertaiment.avif', name: 'Entertainment'),
  NewsItem(imageName: 'assets/technology.jpeg', name: 'Technology'),
  NewsItem(imageName: 'assets/health.avif', name: 'Health'),
  NewsItem(imageName: 'assets/science.avif', name: 'Science'),
];

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return CategoryComponent(items[index]);
        },
      ),
    );
  }
}
