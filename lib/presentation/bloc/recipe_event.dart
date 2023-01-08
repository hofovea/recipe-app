part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.search(String search) = _Search;
  const factory RecipeEvent.searchCompleted(Either<Failure, List<Recipe>> result) = _SearchCompleted;
  const factory RecipeEvent.sort(String order, List<Recipe> unsortedList) = _Sort;
}
