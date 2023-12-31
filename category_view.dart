import 'package:flutter/material.dart';
import 'package:newsapp_f/News_List_Views.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key, required this.category});

final String category;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          NewsListView(
            category:category,
          ),
        ],
      ),
    );
  }
}