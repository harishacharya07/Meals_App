import 'package:flutter/material.dart';
import 'package:meala_app/screen/filter_screen.dart';
import './screen/meal_details_screen.dart';
import './screen/category_meal_screen.dart';
import 'screen/tabs_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 51),
              ),
              body2: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
              title: (TextStyle(fontSize: 32)),
            ),
      ),
      home: TabsScreen(),
      routes: {
        '/tabs-Screen': (ctx) => TabsScreen(),
        '/category-meals': (ctx) => CategoryMealScreen(),
        MealDetailScreen.routeName: (ctx) => MealDetailScreen(),
        FilterScreens.routeName: (ctx) => FilterScreens(),
      },
    );
  }
}
