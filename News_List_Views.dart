import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:newsapp_f/services/article_model.dart';
import 'package:newsapp_f/services/news.dart';
import 'news_title.dart';
import 'package:dio/dio.dart';

class NewsListView extends StatefulWidget {
  const NewsListView({
    super.key, required this.category,
  });

  final String category;
  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
  List<ArticleModel> articles = [];
  @override
  void initState() {
    super.initState();
    GetAllNews();
  }

  Future<void> GetAllNews() async {
    articles = await News(Dio()).GetAllNews(category: widget.category);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(childCount: articles.length,
          (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 22),
          child: NewsTitle(
            articleModel: articles[index],
          ),
        );
      }),
    );
  }
}
