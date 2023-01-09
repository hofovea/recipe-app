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
    required TResult Function(Either<Failure, List<Recipe>> result) listReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(List<Recipe> recipesToAdd) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(List<Recipe> recipesToAdd)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(List<Recipe> recipesToAdd)? add,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ListReady value) listReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Add value) add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ListReady value)? listReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Add value)? add,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ListReady value)? listReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Add value)? add,
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
    required TResult Function(Either<Failure, List<Recipe>> result) listReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(List<Recipe> recipesToAdd) add,
  }) {
    return search(this.search);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(List<Recipe> recipesToAdd)? add,
  }) {
    return search?.call(this.search);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(List<Recipe> recipesToAdd)? add,
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
    required TResult Function(_ListReady value) listReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Add value) add,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ListReady value)? listReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Add value)? add,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ListReady value)? listReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Add value)? add,
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
abstract class _$$_ListReadyCopyWith<$Res> {
  factory _$$_ListReadyCopyWith(
          _$_ListReady value, $Res Function(_$_ListReady) then) =
      __$$_ListReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<Failure, List<Recipe>> result});
}

/// @nodoc
class __$$_ListReadyCopyWithImpl<$Res>
    extends _$RecipeEventCopyWithImpl<$Res, _$_ListReady>
    implements _$$_ListReadyCopyWith<$Res> {
  __$$_ListReadyCopyWithImpl(
      _$_ListReady _value, $Res Function(_$_ListReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_ListReady(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Recipe>>,
    ));
  }
}

/// @nodoc

class _$_ListReady implements _ListReady {
  const _$_ListReady(this.result);

  @override
  final Either<Failure, List<Recipe>> result;

  @override
  String toString() {
    return 'RecipeEvent.listReady(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListReady &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ListReadyCopyWith<_$_ListReady> get copyWith =>
      __$$_ListReadyCopyWithImpl<_$_ListReady>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) search,
    required TResult Function(Either<Failure, List<Recipe>> result) listReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(List<Recipe> recipesToAdd) add,
  }) {
    return listReady(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(List<Recipe> recipesToAdd)? add,
  }) {
    return listReady?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(List<Recipe> recipesToAdd)? add,
    required TResult orElse(),
  }) {
    if (listReady != null) {
      return listReady(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ListReady value) listReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Add value) add,
  }) {
    return listReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ListReady value)? listReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Add value)? add,
  }) {
    return listReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ListReady value)? listReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (listReady != null) {
      return listReady(this);
    }
    return orElse();
  }
}

abstract class _ListReady implements RecipeEvent {
  const factory _ListReady(final Either<Failure, List<Recipe>> result) =
      _$_ListReady;

  Either<Failure, List<Recipe>> get result;
  @JsonKey(ignore: true)
  _$$_ListReadyCopyWith<_$_ListReady> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SortCopyWith<$Res> {
  factory _$$_SortCopyWith(_$_Sort value, $Res Function(_$_Sort) then) =
      __$$_SortCopyWithImpl<$Res>;
  @useResult
  $Res call({SortingOrder order, List<Recipe> unsortedList});
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
              as SortingOrder,
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
  final SortingOrder order;
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
    required TResult Function(Either<Failure, List<Recipe>> result) listReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(List<Recipe> recipesToAdd) add,
  }) {
    return sort(order, unsortedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(List<Recipe> recipesToAdd)? add,
  }) {
    return sort?.call(order, unsortedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(List<Recipe> recipesToAdd)? add,
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
    required TResult Function(_ListReady value) listReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Add value) add,
  }) {
    return sort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ListReady value)? listReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Add value)? add,
  }) {
    return sort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ListReady value)? listReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(this);
    }
    return orElse();
  }
}

abstract class _Sort implements RecipeEvent {
  const factory _Sort(
      final SortingOrder order, final List<Recipe> unsortedList) = _$_Sort;

  SortingOrder get order;
  List<Recipe> get unsortedList;
  @JsonKey(ignore: true)
  _$$_SortCopyWith<_$_Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddCopyWith<$Res> {
  factory _$$_AddCopyWith(_$_Add value, $Res Function(_$_Add) then) =
      __$$_AddCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipesToAdd});
}

/// @nodoc
class __$$_AddCopyWithImpl<$Res> extends _$RecipeEventCopyWithImpl<$Res, _$_Add>
    implements _$$_AddCopyWith<$Res> {
  __$$_AddCopyWithImpl(_$_Add _value, $Res Function(_$_Add) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipesToAdd = null,
  }) {
    return _then(_$_Add(
      null == recipesToAdd
          ? _value._recipesToAdd
          : recipesToAdd // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_Add implements _Add {
  const _$_Add(final List<Recipe> recipesToAdd) : _recipesToAdd = recipesToAdd;

  final List<Recipe> _recipesToAdd;
  @override
  List<Recipe> get recipesToAdd {
    if (_recipesToAdd is EqualUnmodifiableListView) return _recipesToAdd;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recipesToAdd);
  }

  @override
  String toString() {
    return 'RecipeEvent.add(recipesToAdd: $recipesToAdd)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Add &&
            const DeepCollectionEquality()
                .equals(other._recipesToAdd, _recipesToAdd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipesToAdd));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddCopyWith<_$_Add> get copyWith =>
      __$$_AddCopyWithImpl<_$_Add>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String search) search,
    required TResult Function(Either<Failure, List<Recipe>> result) listReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(List<Recipe> recipesToAdd) add,
  }) {
    return add(recipesToAdd);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String search)? search,
    TResult? Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(List<Recipe> recipesToAdd)? add,
  }) {
    return add?.call(recipesToAdd);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String search)? search,
    TResult Function(Either<Failure, List<Recipe>> result)? listReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(List<Recipe> recipesToAdd)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(recipesToAdd);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Search value) search,
    required TResult Function(_ListReady value) listReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Add value) add,
  }) {
    return add(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Search value)? search,
    TResult? Function(_ListReady value)? listReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Add value)? add,
  }) {
    return add?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Search value)? search,
    TResult Function(_ListReady value)? listReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Add value)? add,
    required TResult orElse(),
  }) {
    if (add != null) {
      return add(this);
    }
    return orElse();
  }
}

abstract class _Add implements RecipeEvent {
  const factory _Add(final List<Recipe> recipesToAdd) = _$_Add;

  List<Recipe> get recipesToAdd;
  @JsonKey(ignore: true)
  _$$_AddCopyWith<_$_Add> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RecipeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) resultList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? resultList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? resultList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_ResultList value) resultList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_ResultList value)? resultList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_ResultList value)? resultList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
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
    required TResult Function(List<Recipe> recipesList) resultList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? resultList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? resultList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_ResultList value) resultList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_ResultList value)? resultList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_ResultList value)? resultList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
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
    required TResult Function(List<Recipe> recipesList) resultList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return emptySearch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? resultList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return emptySearch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? resultList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_ResultList value) resultList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return emptySearch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_ResultList value)? resultList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return emptySearch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_ResultList value)? resultList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
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
abstract class _$$_ResultListCopyWith<$Res> {
  factory _$$_ResultListCopyWith(
          _$_ResultList value, $Res Function(_$_ResultList) then) =
      __$$_ResultListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipesList});
}

/// @nodoc
class __$$_ResultListCopyWithImpl<$Res>
    extends _$RecipeStateCopyWithImpl<$Res, _$_ResultList>
    implements _$$_ResultListCopyWith<$Res> {
  __$$_ResultListCopyWithImpl(
      _$_ResultList _value, $Res Function(_$_ResultList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipesList = null,
  }) {
    return _then(_$_ResultList(
      null == recipesList
          ? _value._recipesList
          : recipesList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_ResultList implements _ResultList {
  const _$_ResultList(final List<Recipe> recipesList)
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
    return 'RecipeState.resultList(recipesList: $recipesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultList &&
            const DeepCollectionEquality()
                .equals(other._recipesList, _recipesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultListCopyWith<_$_ResultList> get copyWith =>
      __$$_ResultListCopyWithImpl<_$_ResultList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() emptySearch,
    required TResult Function(List<Recipe> recipesList) resultList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return resultList(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? resultList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return resultList?.call(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? resultList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (resultList != null) {
      return resultList(recipesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_EmptySearch value) emptySearch,
    required TResult Function(_ResultList value) resultList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return resultList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_ResultList value)? resultList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return resultList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_ResultList value)? resultList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (resultList != null) {
      return resultList(this);
    }
    return orElse();
  }
}

abstract class _ResultList implements RecipeState {
  const factory _ResultList(final List<Recipe> recipesList) = _$_ResultList;

  List<Recipe> get recipesList;
  @JsonKey(ignore: true)
  _$$_ResultListCopyWith<_$_ResultList> get copyWith =>
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
    required TResult Function(List<Recipe> recipesList) resultList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? resultList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? resultList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_ResultList value) resultList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_ResultList value)? resultList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_ResultList value)? resultList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
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
    required TResult Function(List<Recipe> recipesList) resultList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? emptySearch,
    TResult? Function(List<Recipe> recipesList)? resultList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? emptySearch,
    TResult Function(List<Recipe> recipesList)? resultList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
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
    required TResult Function(_ResultList value) resultList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_EmptySearch value)? emptySearch,
    TResult? Function(_ResultList value)? resultList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_EmptySearch value)? emptySearch,
    TResult Function(_ResultList value)? resultList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
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
