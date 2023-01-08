import 'package:flutter/material.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/presentation/style/app_style.dart';

class RecipeTile extends StatelessWidget {
  final Recipe recipe;

  const RecipeTile({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        title: Text(recipe.label),
        subtitle: Text('Calories: ${recipe.calories}'),
      ),
    );
  }
}
