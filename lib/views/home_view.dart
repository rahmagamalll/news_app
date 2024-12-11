import 'package:flutter/material.dart';
import 'package:news_project/widgets/all_lists_views.dart';
import 'package:news_project/widgets/titel_appbar.dart';




class HomeNewsView extends StatelessWidget {
  const HomeNewsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Titelappbar(),
        centerTitle: true,
      ),
      body: const AllListsViwes(),
    );
  }
}

