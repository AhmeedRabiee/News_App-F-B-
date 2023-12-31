import 'package:dio/dio.dart';
import 'package:newsapp_f/services/article_model.dart';
import 'package:dio/dio.dart';

class News {
  final Dio dio;

  News(this.dio);

  // void GetAllNews() async {
  //   // String path = 'http://127.0.0.1:8000/GetAllNews';
  //   final response = await dio.get(
  //       'https://newsapi.org/v2/top-headlines?country=us&apiKey=d0714244638942778d9b7aed6e2d24c5');
  //   print(response);
  // }

  Future<List<ArticleModel>> GetAllNews({required String category}) async {
    var response = await dio.get(
        'https://newsapi.org/v2/top-headlines?apiKey=d0714244638942778d9b7aed6e2d24c5&country=us&category=$category');

    Map<String, dynamic> jsonData = response.data;

    List<dynamic> articles = jsonData['articles'];

    List<ArticleModel> articlesList = [];

    for (var article in articles) {
      ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'],
        title: article['title'],
        subTitle: article['description'],
      );
      articlesList.add(articleModel);
    }
    return articlesList;
  }
}
