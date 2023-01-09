part of 'history_bloc.dart';

@freezed
class HistoryEvent with _$HistoryEvent {
  /// To show firebase list
  const factory HistoryEvent.requestList() = _RequestList;
  /// Called when firebase list is ready
  const factory HistoryEvent.firebaseListReady(Either<Failure, List<Recipe>> result) = _FirebaseListReady;
  const factory HistoryEvent.sort(SortingOrder order, List<Recipe> unsortedList) = _Sort;
  const factory HistoryEvent.delete(Recipe recipeToDelete) = _Delete;
}
