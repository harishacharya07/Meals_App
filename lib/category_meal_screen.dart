import 'package:flutter/material.dart';

class CategoryMealScreen extends StatelessWidget {
  //final String categoryId;
  //final String categoryTitle;

  //CategoryMealScreen(this.categoryTitle, this.categoryId);

  @override
  Widget build(BuildContext context) {
    final routeAgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeAgs['title'];
    final categoryId = routeAgs['id'];
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The recipes category'),
      ),
    );
  }
}
