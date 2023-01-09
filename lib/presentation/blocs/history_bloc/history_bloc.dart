import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/core/usecase/usecase.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/usecases/delete_recipe_from_firebase.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_firebase.dart';
import 'package:recipe_app/presentation/screens/search_screen/util/sorting_order.dart';

part 'history_event.dart';

part 'history_state.dart';

part 'history_bloc.freezed.dart';

class HistoryBloc extends Bloc<HistoryEvent, HistoryState> {
  final GetRecipesFromFirebase _getRecipesFromFirebase;
  final DeleteRecipeFromFirebase _deleteRecipeFromFirebase;

  HistoryBloc(this._getRecipesFromFirebase, this._deleteRecipeFromFirebase)
      : super(const HistoryState.initial()) {
    on<HistoryEvent>((event, emit) {
      event.when(
        requestList: () async {
          emit(const HistoryState.loading());
          final Either<Failure, List<Recipe>> eitherResultOrFailure =
              await _getRecipesFromFirebase.call(NoParams());
          add(HistoryEvent.firebaseListReady(eitherResultOrFailure));
        },
        firebaseListReady: (Either<Failure, List<Recipe>> result) {
          final stateToEmit = result.fold(
            (failure) => HistoryState.error(
              _mapFailureToString(failure),
            ),
            (recipesList) {
              if (recipesList.isEmpty) {
                return const HistoryState.initial();
              } else {
                print('Got list\n${recipesList.length}');
                return HistoryState.resultFirebaseList(recipesList);
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
          emit(HistoryState.resultFirebaseList(sortedList));
        },
        delete: (Recipe recipeToDelete) async {
          await _deleteRecipeFromFirebase.call(DeleteParams(recipeToDelete: recipeToDelete));
          add(const HistoryEvent.requestList());
        },
      );
    });
  }

  String _mapFailureToString(Failure failure) {
    switch (failure.runtimeType) {
      case ServerFailure:
        return 'Something wrong with server';
      case FirebaseFailure:
        return 'Something wrong with Firebase';
      default:
        return 'Unexpected error';
    }
  }
}
