import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/core/usecase/usecase.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/usecases/add_recipes_to_firebase.dart';
import 'package:recipe_app/domain/usecases/delete_recipe_from_firebase.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_api.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_firebase.dart';
import 'package:recipe_app/presentation/screens/search_screen/util/sorting_order.dart';

part 'recipe_event.dart';

part 'recipe_state.dart';

part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final GetRecipesFromApi _getRecipesFromApi;

  final AddRecipesToFirebase _addRecipesToFirebase;


  RecipeBloc(
    this._getRecipesFromApi,
    this._addRecipesToFirebase,
  ) : super(const RecipeState.initial()) {
    on<RecipeEvent>((event, emit) async {
      event.when(
        search: (searchQuery) async {
          emit(const RecipeState.loading());
          final Either<Failure, List<Recipe>> eitherResultOrFailure = await _getRecipesFromApi.call(
            ApiSearchParams(searchQuery: searchQuery),
          );
          add(RecipeEvent.listReady(eitherResultOrFailure));
        },
        listReady: (Either<Failure, List<Recipe>> result) {
          final stateToEmit = result.fold(
            (failure) => RecipeState.error(
              _mapFailureToString(failure),
            ),
            (recipesList) {
              if (recipesList.isEmpty) {
                return const RecipeState.emptySearch();
              } else {
                print('Got list\n${recipesList.length}');
                return RecipeState.resultList(recipesList);
              }
            },
          );
          emit(stateToEmit);
        },
        sort: (SortingOrder order, List<Recipe> unsortedList) {
          List<Recipe> sortedList = List.from(unsortedList);
          switch (order) {
            case SortingOrder.ascending:
              {
                sortedList.sort(
                  (first, second) => first.calories.compareTo(second.calories),
                );
              }
              break;
            case SortingOrder.descending:
              {
                sortedList.sort(
                  (first, second) => second.calories.compareTo(first.calories),
                );
              }
              break;
            default:
              break;
          }
          emit(RecipeState.resultList(sortedList));
        },
        add: (List<Recipe> recipesToAdd) async {
          await _addRecipesToFirebase.call(AddParams(recipesToAdd: recipesToAdd));
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
