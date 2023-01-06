part of 'recipe_bloc.dart';

@freezed
class RecipeEvent with _$RecipeEvent {
  const factory RecipeEvent.started() = _Started;
  const factory RecipeEvent.search(String search) = _Search;
}
