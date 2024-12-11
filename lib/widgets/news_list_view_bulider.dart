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
  // List<ArticalModel> articles = [];
  // bool isLoading = true;
  var future; // لو من النوع دا List<ArticalModel>  هيديني ايرور لازم تبقي var
  // لازم يبقي فيوتشر من النوع ده Future<List<ArticalModel>>?

  @override
  void initState() {
    super.initState();
    future = NewsService().getArticle(widget.category); // important
    // generalNews();
  }

  // Future<void> generalNews() async {
  //   articles = await NewsService().getArticle();
  //   isLoading = false;
  //   setState(() {});
  // }

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
    // return isLoading
    //     ? SliverToBoxAdapter(child: Center(child: CircularProgressIndicator()))
    //     : articles.isNotEmpty //احتياطي
    //         ? NewsListVeiw(articles: articles)
    //         : SliverToBoxAdapter(
    //             child: Text("try later..."),
    //           );
  }
}
