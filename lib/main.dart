import 'package:flutter/material.dart';

import 'screens/categories_screen.dart';
import 'screens/category_meals_screen.dart';
import 'screens/meal_detail_screen.dart';
import 'screens/tabs_screens.dart';
import 'screens/filters_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        FilterScreen.routeName: (context) => FilterScreen(),
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
