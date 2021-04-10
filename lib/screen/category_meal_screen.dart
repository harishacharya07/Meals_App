import 'package:flutter/material.dart';
import '../widget/meal_item.dart';
import '../widget/dummy_data.dart';

class CategoryMealScreen extends StatelessWidget {
  //final String categoryId;
  //final String categoryTitle;

  //CategoryMealScreen(this.categoryTitle, this.categoryId);

  @override
  Widget build(BuildContext context) {
    final routeAgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeAgs['title'];
    final categoryId = routeAgs['id'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            title: categoryMeals[index].title,
            imagerUrl: categoryMeals[index].imageUrl,
            duration: categoryMeals[index].duration,
            affordability: categoryMeals[index].affordability,
            complexity: categoryMeals[index].complexity,
          );
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
