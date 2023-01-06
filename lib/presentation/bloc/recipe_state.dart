part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.initial(List<Recipe> recipesList) = _Initial;
  const factory RecipeState.loading() = _Loading;
}
