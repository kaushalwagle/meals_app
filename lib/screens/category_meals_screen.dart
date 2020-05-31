import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
//  final String id;
//  final String title;
//
//  CategoryMealsScreen(this.id, this.title);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final id = routeArgs['id'];
    final title = routeArgs['title'];
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text('The Recipes for the category?'),
      ),
    );
  }
}
