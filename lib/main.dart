import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screens.dart';
import 'screens/filters_screen.dart';
import 'models/meal.dart';
import 'data/dummy_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  static Map<String, bool> _filters = {
    'gluten': false,
    'lactose': false,
    'vegan': false,
    'vegetarian': false,
  };

  List<Meal> _availableMeals = DUMMY_MEALS.where((meal) {
    if (meal.isLactoseFree != _filters['gluten']) return false;
    if (meal.isVegan != _filters['vegan']) return false;
    if (meal.isVegetarian != _filters['vegetarian']) return false;
    if (meal.isLactoseFree != _filters['lactose']) return false;
    return true;
  }).toList();

  void _setFilters(Map<String, bool> filterData) {
    setState(() {
      _filters = filterData;

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData.from(
        colorScheme: ThemeData.dark().colorScheme,
//        ColorScheme.fromSwatch().copyWith(
//          primary: Colors.blueGrey.shade500,
//          onPrimary: Colors.white,
//          primaryVariant: Colors.blueGrey.shade700,
//          secondary: Colors.brown.shade500,
//          onSecondary: Colors.black,
//          secondaryVariant: Colors.brown.shade700,
//          background: Colors.brown.shade200,
//          onBackground: Colors.black54,
//          error: Colors.red.shade900,
//          onError: Colors.orange,
//          brightness: Brightness.dark,
//          surface: Colors.white,
//          onSurface: Colors.black,
//        ),
        textTheme: ThemeData.dark().textTheme,
      ),
      //home: CategoriesScreen(),
      //initialRoute: '/',
      routes: {
        '/': (context) => TabsScreen(),
        CategoryMealsScreen.routeName: (context) =>
            CategoryMealsScreen(_availableMeals),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        FilterScreen.routeName: (context) => FilterScreen(_filters,_setFilters),
      },
//      onGenerateRoute: (settings) {
//        print(settings.arguments);
//        return(MaterialPageRoute(builder: (context) => CategoriesScreen()));
//      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => CategoriesScreen(),
        );
      },
    );
  }
}
