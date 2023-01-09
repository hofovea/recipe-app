import 'package:flutter/material.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_app/presentation/screens/recipe_screen/recipe_screen.dart';

class RecipeTile extends StatelessWidget {
  final Recipe recipe;
  final String tag = UniqueKey().toString();

  RecipeTile({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeScreen(
                recipe: recipe,
                tag: tag,
              ),
            ),
          );
        },
        leading: Hero(
          tag: tag,
          child: CircleAvatar(
            backgroundImage: NetworkImage(recipe.imageUrl),
            backgroundColor: Colors.transparent,
          ),
        ),
        title: Text(recipe.label),
        subtitle: Text(
            '${AppLocalizations.of(context)!.translate('caloriesListItem')!}: ${recipe.calories}'),
      ),
    );
  }
}
