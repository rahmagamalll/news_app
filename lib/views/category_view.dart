import 'package:flutter/material.dart';
import 'package:news_project/widgets/news_list_view_bulider.dart';

class CategoryView extends StatelessWidget {
  final String categoryname;

  const CategoryView({super.key, required this.categoryname});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          categoryname,
          style: const TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: CustomScrollView(
          slivers: [
            NewsListViewBuilder(
              category: categoryname,
            ),
          ],
        ),
      ),
    );
  }
}
