// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RecipeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) search,
    required TResult Function(Either<Failure, List<Recipe>> result)
        searchCompleted,
    required TResult Function(String order, List<Recipe> unsortedList) sort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult? Function(String order, List<Recipe> unsortedList)? sort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult Function(String order, List<Recipe> unsortedList)? sort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_Sort value) sort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchCompleted value)? searchCompleted,
    TResult? Function(_Sort value)? sort,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_Sort value)? sort,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeEventCopyWith<$Res> {
  factory $RecipeEventCopyWith(
          RecipeEvent value, $Res Function(RecipeEvent) then) =
      _$RecipeEventCopyWithImpl<$Res, RecipeEvent>;
}

/// @nodoc
class _$RecipeEventCopyWithImpl<$Res, $Val extends RecipeEvent>
    implements $RecipeEventCopyWith<$Res> {
  _$RecipeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_SearchCopyWith<$Res> {
  factory _$$_SearchCopyWith(_$_Search value, $Res Function(_$_Search) then) =
      __$$_SearchCopyWithImpl<$Res>;
  @useResult
  $Res call({String search});
}

/// @nodoc
class __$$_SearchCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_Search>
    implements _$$_SearchCopyWith<$Res> {
  __$$_SearchCopyWithImpl(_$_Search _value, $Res Function(_$_Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? search = null,
  }) {
    return _then(_$_Search(
      null == search
          ? _value.search
          : search // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Search implements _Search {
  const _$_Search(this.search);

  @override
  final String search;

  @override
  String toString() {
    return 'RecipeEvent.search(search: $search)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Search &&
            (identical(other.search, search) || other.search == search));
  }

  @override
  int get hashCode => Object.hash(runtimeType, search);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      __$$_SearchCopyWithImpl<_$_Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) search,
    required TResult Function(Either<Failure, List<Recipe>> result)
        searchCompleted,
    required TResult Function(String order, List<Recipe> unsortedList) sort,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult? Function(String order, List<Recipe> unsortedList)? sort,
  }) {
    return search?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult Function(String order, List<Recipe> unsortedList)? sort,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this.search);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_Sort value) sort,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchCompleted value)? searchCompleted,
    TResult? Function(_Sort value)? sort,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_Sort value)? sort,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class _Search implements RecipeEvent {
  const factory _Search(final String search) = _$_Search;

  String get search;
  @JsonKey(ignore: true)
  _$$_SearchCopyWith<_$_Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SearchCompletedCopyWith<$Res> {
  factory _$$_SearchCompletedCopyWith(
          _$_SearchCompleted value, $Res Function(_$_SearchCompleted) then) =
      __$$_SearchCompletedCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<Failure, List<Recipe>> result});
}

/// @nodoc
class __$$_SearchCompletedCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_SearchCompleted>
    implements _$$_SearchCompletedCopyWith<$Res> {
  __$$_SearchCompletedCopyWithImpl(
      _$_SearchCompleted _value, $Res Function(_$_SearchCompleted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_SearchCompleted(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Recipe>>,
    ));
  }
}

/// @nodoc

class _$_SearchCompleted implements _SearchCompleted {
  const _$_SearchCompleted(this.result);

  @override
  final Either<Failure, List<Recipe>> result;

  @override
  String toString() {
    return 'RecipeEvent.searchCompleted(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchCompleted &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchCompletedCopyWith<_$_SearchCompleted> get copyWith =>
      __$$_SearchCompletedCopyWithImpl<_$_SearchCompleted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) search,
    required TResult Function(Either<Failure, List<Recipe>> result)
        searchCompleted,
    required TResult Function(String order, List<Recipe> unsortedList) sort,
  }) {
    return searchCompleted(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult? Function(String order, List<Recipe> unsortedList)? sort,
  }) {
    return searchCompleted?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult Function(String order, List<Recipe> unsortedList)? sort,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_Sort value) sort,
  }) {
    return searchCompleted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchCompleted value)? searchCompleted,
    TResult? Function(_Sort value)? sort,
  }) {
    return searchCompleted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_Sort value)? sort,
    required TResult orElse(),
  }) {
    if (searchCompleted != null) {
      return searchCompleted(this);
    }
    return orElse();
  }
}

abstract class _SearchCompleted implements RecipeEvent {
  const factory _SearchCompleted(final Either<Failure, List<Recipe>> result) =
      _$_SearchCompleted;

  Either<Failure, List<Recipe>> get result;
  @JsonKey(ignore: true)
  _$$_SearchCompletedCopyWith<_$_SearchCompleted> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SortCopyWith<$Res> {
  factory _$$_SortCopyWith(_$_Sort value, $Res Function(_$_Sort) then) =
      __$$_SortCopyWithImpl<$Res>;
  @useResult
  $Res call({String order, List<Recipe> unsortedList});
}

/// @nodoc
class __$$_SortCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_Sort>
    implements _$$_SortCopyWith<$Res> {
  __$$_SortCopyWithImpl(_$_Sort _value, $Res Function(_$_Sort) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? order = null,
    Object? unsortedList = null,
  }) {
    return _then(_$_Sort(
      null == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as String,
      null == unsortedList
          ? _value._unsortedList
          : unsortedList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Sort implements _Sort {
  const _$_Sort(this.order, final List<Recipe> unsortedList)
      : _unsortedList = unsortedList;

  @override
  final String order;
  final List<Recipe> _unsortedList;
  @override
  List<Recipe> get unsortedList {
    if (_unsortedList is EqualUnmodifiableListView) return _unsortedList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_unsortedList);
  }

  @override
  String toString() {
    return 'RecipeEvent.sort(order: $order, unsortedList: $unsortedList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sort &&
            (identical(other.order, order) || other.order == order) &&
            const DeepCollectionEquality()
                .equals(other._unsortedList, _unsortedList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, order, const DeepCollectionEquality().hash(_unsortedList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortCopyWith<_$_Sort> get copyWith =>
      __$$_SortCopyWithImpl<_$_Sort>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) search,
    required TResult Function(Either<Failure, List<Recipe>> result)
        searchCompleted,
    required TResult Function(String order, List<Recipe> unsortedList) sort,
  }) {
    return sort(order, unsortedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult? Function(String order, List<Recipe> unsortedList)? sort,
  }) {
    return sort?.call(order, unsortedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? searchCompleted,
    TResult Function(String order, List<Recipe> unsortedList)? sort,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(order, unsortedList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_SearchCompleted value) searchCompleted,
    required TResult Function(_Sort value) sort,
  }) {
    return sort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_SearchCompleted value)? searchCompleted,
    TResult? Function(_Sort value)? sort,
  }) {
    return sort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_SearchCompleted value)? searchCompleted,
    TResult Function(_Sort value)? sort,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(this);
    }
    return orElse();
  }
}

abstract class _Sort implements RecipeEvent {
  const factory _Sort(final String order, final List<Recipe> unsortedList) =
      _$_Sort;

  String get order;
  List<Recipe> get unsortedList;
  @JsonKey(ignore: true)
  _$$_SortCopyWith<_$_Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) searchResult,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Recipe> recipesList) sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? searchResult,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<Recipe> recipesList)? sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? searchResult,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Recipe> recipesList)? sorted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_SearchResult value) searchResult,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Sorted value) sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_SearchResult value)? searchResult,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sorted value)? sorted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_SearchResult value)? searchResult,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeStateCopyWith<$Res> {
  factory $RecipeStateCopyWith(
          RecipeState value, $Res Function(RecipeState) then) =
      _$RecipeStateCopyWithImpl<$Res, RecipeState>;
}

/// @nodoc
class _$RecipeStateCopyWithImpl<$Res, $Val extends RecipeState>
    implements $RecipeStateCopyWith<$Res> {
  _$RecipeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'RecipeState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) searchResult,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Recipe> recipesList) sorted,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? searchResult,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<Recipe> recipesList)? sorted,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? searchResult,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Recipe> recipesList)? sorted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_SearchResult value) searchResult,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Sorted value) sorted,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_SearchResult value)? searchResult,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_SearchResult value)? searchResult,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements RecipeState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_EmptySearchCopyWith<$Res> {
  factory _$$_EmptySearchCopyWith(
          _$_EmptySearch value, $Res Function(_$_EmptySearch) then) =
      __$$_EmptySearchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_EmptySearchCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_EmptySearch>
    implements _$$_EmptySearchCopyWith<$Res> {
  __$$_EmptySearchCopyWithImpl(
      _$_EmptySearch _value, $Res Function(_$_EmptySearch) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_EmptySearch implements _EmptySearch {
  const _$_EmptySearch();

  @override
  String toString() {
    return 'RecipeState.emptySearch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_EmptySearch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) searchResult,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Recipe> recipesList) sorted,
  }) {
    return emptySearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? searchResult,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<Recipe> recipesList)? sorted,
  }) {
    return emptySearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? searchResult,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Recipe> recipesList)? sorted,
    required TResult orElse(),
  }) {
    if (emptySearch != null) {
      return emptySearch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_SearchResult value) searchResult,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Sorted value) sorted,
  }) {
    return emptySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_SearchResult value)? searchResult,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return emptySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_SearchResult value)? searchResult,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (emptySearch != null) {
      return emptySearch(this);
    }
    return orElse();
  }
}

abstract class _EmptySearch implements RecipeState {
  const factory _EmptySearch() = _$_EmptySearch;
}

/// @nodoc
abstract class _$$_SearchResultCopyWith<$Res> {
  factory _$$_SearchResultCopyWith(
          _$_SearchResult value, $Res Function(_$_SearchResult) then) =
      __$$_SearchResultCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipesList});
}

/// @nodoc
class __$$_SearchResultCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_SearchResult>
    implements _$$_SearchResultCopyWith<$Res> {
  __$$_SearchResultCopyWithImpl(
      _$_SearchResult _value, $Res Function(_$_SearchResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipesList = null,
  }) {
    return _then(_$_SearchResult(
      null == recipesList
          ? _value._recipesList
          : recipesList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_SearchResult implements _SearchResult {
  const _$_SearchResult(final List<Recipe> recipesList)
      : _recipesList = recipesList;

  final List<Recipe> _recipesList;
  @override
  List<Recipe> get recipesList {
    if (_recipesList is EqualUnmodifiableListView) return _recipesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipesList);
  }

  @override
  String toString() {
    return 'RecipeState.searchResult(recipesList: $recipesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SearchResult &&
            const DeepCollectionEquality()
                .equals(other._recipesList, _recipesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      __$$_SearchResultCopyWithImpl<_$_SearchResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) searchResult,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Recipe> recipesList) sorted,
  }) {
    return searchResult(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? searchResult,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<Recipe> recipesList)? sorted,
  }) {
    return searchResult?.call(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? searchResult,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Recipe> recipesList)? sorted,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult(recipesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_SearchResult value) searchResult,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Sorted value) sorted,
  }) {
    return searchResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_SearchResult value)? searchResult,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return searchResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_SearchResult value)? searchResult,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (searchResult != null) {
      return searchResult(this);
    }
    return orElse();
  }
}

abstract class _SearchResult implements RecipeState {
  const factory _SearchResult(final List<Recipe> recipesList) = _$_SearchResult;

  List<Recipe> get recipesList;
  @JsonKey(ignore: true)
  _$$_SearchResultCopyWith<_$_SearchResult> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'RecipeState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) searchResult,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Recipe> recipesList) sorted,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? searchResult,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<Recipe> recipesList)? sorted,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? searchResult,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Recipe> recipesList)? sorted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_SearchResult value) searchResult,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Sorted value) sorted,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_SearchResult value)? searchResult,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_SearchResult value)? searchResult,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements RecipeState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMessage});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMessage = null,
  }) {
    return _then(_$_Error(
      null == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.errorMessage);

  @override
  final String errorMessage;

  @override
  String toString() {
    return 'RecipeState.error(errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) searchResult,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Recipe> recipesList) sorted,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? searchResult,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<Recipe> recipesList)? sorted,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? searchResult,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Recipe> recipesList)? sorted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errorMessage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_SearchResult value) searchResult,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Sorted value) sorted,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_SearchResult value)? searchResult,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_SearchResult value)? searchResult,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements RecipeState {
  const factory _Error(final String errorMessage) = _$_Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SortedCopyWith<$Res> {
  factory _$$_SortedCopyWith(_$_Sorted value, $Res Function(_$_Sorted) then) =
      __$$_SortedCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipesList});
}

/// @nodoc
class __$$_SortedCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_Sorted>
    implements _$$_SortedCopyWith<$Res> {
  __$$_SortedCopyWithImpl(_$_Sorted _value, $Res Function(_$_Sorted) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipesList = null,
  }) {
    return _then(_$_Sorted(
      null == recipesList
          ? _value._recipesList
          : recipesList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Sorted implements _Sorted {
  const _$_Sorted(final List<Recipe> recipesList) : _recipesList = recipesList;

  final List<Recipe> _recipesList;
  @override
  List<Recipe> get recipesList {
    if (_recipesList is EqualUnmodifiableListView) return _recipesList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipesList);
  }

  @override
  String toString() {
    return 'RecipeState.sorted(recipesList: $recipesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Sorted &&
            const DeepCollectionEquality()
                .equals(other._recipesList, _recipesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SortedCopyWith<_$_Sorted> get copyWith =>
      __$$_SortedCopyWithImpl<_$_Sorted>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) searchResult,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
    required TResult Function(List<Recipe> recipesList) sorted,
  }) {
    return sorted(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? searchResult,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
    TResult? Function(List<Recipe> recipesList)? sorted,
  }) {
    return sorted?.call(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? searchResult,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    TResult Function(List<Recipe> recipesList)? sorted,
    required TResult orElse(),
  }) {
    if (sorted != null) {
      return sorted(recipesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_SearchResult value) searchResult,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
    required TResult Function(_Sorted value) sorted,
  }) {
    return sorted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_SearchResult value)? searchResult,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
    TResult? Function(_Sorted value)? sorted,
  }) {
    return sorted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_SearchResult value)? searchResult,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    TResult Function(_Sorted value)? sorted,
    required TResult orElse(),
  }) {
    if (sorted != null) {
      return sorted(this);
    }
    return orElse();
  }
}

abstract class _Sorted implements RecipeState {
  const factory _Sorted(final List<Recipe> recipesList) = _$_Sorted;

  List<Recipe> get recipesList;
  @JsonKey(ignore: true)
  _$$_SortedCopyWith<_$_Sorted> get copyWith =>
      throw _privateConstructorUsedError;
}
