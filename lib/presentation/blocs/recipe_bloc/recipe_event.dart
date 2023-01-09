part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  /// To show search list
  const factory RecipeEvent.search(String search) = _Search;
  /// Called when search list is ready
  const factory RecipeEvent.listReady(Either<Failure, List<Recipe>> result) = _ListReady;
  const factory RecipeEvent.sort(SortingOrder order, List<Recipe> unsortedList) = _Sort;
  const factory RecipeEvent.add(List<Recipe> recipesToAdd) = _Add;
}
