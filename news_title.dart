import 'package:flutter/material.dart';
import 'package:newsapp_f/services/article_model.dart';

class NewsTitle extends StatelessWidget {
  const NewsTitle({Key? key, required this.articleModel}) : super(key: key);

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: articleModel.image != null
              ? Image.network(
                  articleModel.image!,
                  height: 200,
                  width: 500,
                  fit: BoxFit.cover,
                )
              : Container(
                  height: 200,
                  width: 500,
                  color: Colors.grey, // Placeholder color
                ),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          articleModel.title,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          articleModel.subTitle ?? '', // Use empty string if subTitle is null
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}
