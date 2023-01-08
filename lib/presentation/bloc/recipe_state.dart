part of 'recipe_bloc.dart';

@freezed
class RecipeState with _$RecipeState {
  const factory RecipeState.initial() = _Initial;
  const factory RecipeState.emptySearch() = _EmptySearch;
  const factory RecipeState.searchResult(List<Recipe> recipesList) = _SearchResult;
  const factory RecipeState.loading() = _Loading;
  const factory RecipeState.error(String errorMessage) = _Error;
  const factory RecipeState.sorted(List<Recipe> recipesList) = _Sorted;
}
