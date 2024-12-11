import 'package:dio/dio.dart';
import 'package:news_project/models/artical_model.dart';

class NewsService {
  final Dio dio = Dio();

  Future<List<ArticalModel>> getArticle(String category) async {
    try {
      final response = await dio.get(
          'https://newsapi.org/v2/top-headlines?apiKey=b0e6cecdad774d71889bfbf32b1ae6e2&category=$category&country=us');

      Map<String, dynamic> jsondata = response.data;

      List<dynamic> articles = jsondata['articles'];

      List<ArticalModel> articlesnews = [];

      for (var article in articles) {
        ArticalModel articlemodel = ArticalModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );
        if (articlemodel.image != null) {
          articlesnews.add(articlemodel);
        }
      }

      return articlesnews;
    } catch (e) {
      return [];
    }
  }
}
