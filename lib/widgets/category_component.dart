import 'package:flutter/material.dart';
import 'package:news_project/models/listhorizentalnewsmodel.dart';
import 'package:news_project/views/category_view.dart';

class CategoryComponent extends StatelessWidget {
  final NewsItem item;

  const CategoryComponent(this.item, {super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return CategoryView(
                categoryname: item.name,
              );
            },
          ),
        );
      },
      child: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: const Color.fromARGB(255, 247, 247, 247),
              image: DecorationImage(
                  image: AssetImage(item.imageName), fit: BoxFit.fill),
            ),
            height: 100,
            width: 200,
            child: Center(
              child: Text(
                item.name,
                style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white),
              ),
            ),
          )),
    );
  }
}
