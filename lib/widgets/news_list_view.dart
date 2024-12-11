import 'package:flutter/material.dart';
import 'package:news_project/models/artical_model.dart';
import 'package:news_project/widgets/news_component.dart';

class NewsListVeiw extends StatelessWidget {
  final List<ArticalModel> articles;

  const NewsListVeiw({super.key, required this.articles});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: articles.length,
        (context, index) {
          return Padding(
            padding: const EdgeInsets.only(bottom: 15),
            child: NewsComponent(
              articalmodel: articles[index],
            ),
          );
        },
      ),
    );
  }
}
