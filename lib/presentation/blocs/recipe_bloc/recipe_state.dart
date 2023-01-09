part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.initial() = _Initial;
  const factory RecipeState.emptySearch() = _EmptySearch;
  const factory RecipeState.resultList(List<Recipe> recipesList) = _ResultList;
  const factory RecipeState.loading() = _Loading;
  const factory RecipeState.error(String errorMessage) = _Error;
}
