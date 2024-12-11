import 'package:flutter/material.dart';
import 'package:news_project/models/artical_model.dart';
import 'package:news_project/services/news_services.dart';
import 'package:news_project/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  final String category;
  const NewsListViewBuilder({required this.category,
    super.key,
  });


  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {

  var future;

  @override
  void initState() {
    super.initState();
    future = NewsService().getArticle(widget.category);

  }

 

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticalModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return NewsListVeiw(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Text("try later..."),
            );
          } else {
            return const SliverToBoxAdapter(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            );
          }
        });
          
  }
}
