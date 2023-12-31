import 'package:flutter/material.dart';
import 'package:newsapp_f/category_models.dart';
import 'category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  final List<CategoryModel> categories = const [
    CategoryModel(image: 'assets/G.jpeg', categoryName: 'Business'),
    CategoryModel(image: 'assets/Weather.jpg', categoryName: 'Technology'),
    CategoryModel(image: 'assets/Photo.jpg', categoryName: 'General'),
    CategoryModel(image: 'assets/Netflix.jpg', categoryName: 'Entertainment'),
    CategoryModel(image: 'assets/D.jpeg', categoryName: 'Sports'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return CategoryCard(
              category: categories[index],
            );
          }),
    );
  }
}
