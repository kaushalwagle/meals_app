import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
        primaryColor: Color.fromRGBO(
          253,
          199,
          36,
          1,
        ),
        accentColor: Color.fromRGBO(36, 170, 253, 1),
        canvasColor: Colors.grey.shade200,
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Colors.grey.shade900),
              bodyText2: TextStyle(color: Colors.grey.shade900),
              headline6: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'RobotoCondensed',
              ),
            ),
      ),
      home: CategoriesScreen(),
      routes: {
        '/home': (context) => CategoriesScreen(),
        '/category-meals': (context) => CategoryMealsScreen(),
      },
    );
  }
}
