import 'package:flutter/material.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_app/presentation/style/app_style.dart';

class RecipeScreen extends StatefulWidget {
  final Recipe recipe;
  final String tag;

  const RecipeScreen({Key? key, required this.recipe, required this.tag}) : super(key: key);

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  final double _imageHeight = 250;
  final double _caloriesFontSize = 20;
  final double _labelFontSize = 32;
  final double _imageBorderRadius = 40.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            flexibleSpace: FlexibleSpaceBar(
              //titlePadding: EdgeInsets.all(10,),
              title: const Text(
                'Recipe app',
              ),
              centerTitle: true,
              background: Container(
                color: AppStyle.backgroundColor,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: AppStyle.recipeImageBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 8, 0, 0),
                child: Center(
                  child: Text(
                    widget.recipe.label,
                    style: AppStyle.whiteTextStyle.copyWith(fontSize: _labelFontSize),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: AppStyle.recipeImageBackgroundColor,
              height: _imageHeight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Hero(
                  tag: widget.tag,
                  child: FittedBox(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(_imageBorderRadius),
                      child: Image(
                        image: NetworkImage(widget.recipe.imageUrl),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              color: AppStyle.recipeImageBackgroundColor,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                child: Center(
                  child: Text(
                    '${AppLocalizations.of(context)!.translate('caloriesListItem')!}: ${widget.recipe.calories.toString()}',
                    style: AppStyle.whiteTextStyle.copyWith(fontSize: _caloriesFontSize),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: widget.recipe.ingredients.length,
              (BuildContext context, int index) {
                return ListTile(
                  tileColor: index.isOdd ? Colors.white : Colors.black12,
                  title: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      widget.recipe.ingredients[index],
                      textScaleFactor: 1.5,
                      textAlign: TextAlign.center,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
