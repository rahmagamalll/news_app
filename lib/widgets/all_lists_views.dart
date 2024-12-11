import 'package:flutter/material.dart';
import 'package:news_project/widgets/categories_list_view.dart';
import 'package:news_project/widgets/news_list_view_bulider.dart';

class AllListsViwes extends StatelessWidget {
  const AllListsViwes({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 12),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(), //important ************
        slivers: [
          SliverToBoxAdapter(
            child: CategoriesListView(),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 10,
            ),
          ),
          SliverToBoxAdapter(
            child: Text(
              'Recent News',
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 18, color: Colors.red),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 2,
            ),
          ),
          NewsListViewBuilder(
            category: 'general',
          ), //NewsListView() حولتها ل سيلفير ليست علشان مينفعش مع السيلفير تو بوكس يكون ال فيو لست اكسبنديد expanded
        ],
      ),
    );
  }
}
