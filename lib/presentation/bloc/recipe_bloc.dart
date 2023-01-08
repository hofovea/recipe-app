import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_api.dart';

part 'recipe_event.dart';

part 'recipe_state.dart';

part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final GetRecipesFromApi getRecipesFromApi;

  RecipeBloc(this.getRecipesFromApi) : super(const RecipeState.initial()) {
    on<RecipeEvent>((event, emit) async {
      event.when(
        search: (searchQuery) async {
          emit(const RecipeState.loading());
          final Either<Failure, List<Recipe>> eitherResultOrFailure = await getRecipesFromApi.call(
            ApiSearchParams(searchQuery: searchQuery),
          );
          add(RecipeEvent.searchCompleted(eitherResultOrFailure));
        },
        searchCompleted: (Either<Failure, List<Recipe>> result) {
          final stateToEmit = result.fold(
            (failure) => RecipeState.error(
              _mapFailureToString(failure),
            ),
            (recipesList) {
              if (recipesList.isEmpty) {
                return const RecipeState.emptySearch();
              } else {
                print('Got list\n${recipesList.length}');
                return RecipeState.searchResult(recipesList);
              }
            },
          );
          emit(stateToEmit);
        },
        sort: (String order, List<Recipe> unsortedList) {
          List<Recipe> sortedList = List.from(unsortedList);
          switch (order) {
            case 'Ascending':
              {
                sortedList.sort(
                  (first, second) => first.calories.compareTo(second.calories),
                );
              }
              break;
            case 'Descending':
              {
                sortedList.sort(
                  (first, second) => second.calories.compareTo(first.calories),
                );
              }
              break;
            default:
              break;
          }
          emit(RecipeState.sorted(sortedList));
        },
      );
    });
  }

  String _mapFailureToString(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Something wrong with server';
      default:
        return 'Unexpected error';
    }
  }
}
