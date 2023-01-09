part of 'history_bloc.dart';

@freezed
class HistoryState with _$HistoryState {
  const factory HistoryState.initial() = _Initial;
  const factory HistoryState.resultFirebaseList(List<Recipe> recipesList) = _ResultFirebaseList;
  const factory HistoryState.loading() = _Loading;
  const factory HistoryState.error(String errorMessage) = _Error;
}
