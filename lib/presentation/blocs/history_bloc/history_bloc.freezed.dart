// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'history_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HistoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestList,
    required TResult Function(Either<Failure, List<Recipe>> result)
        firebaseListReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(Recipe recipeToDelete) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestList,
    TResult? Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(Recipe recipeToDelete)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestList,
    TResult Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(Recipe recipeToDelete)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestList value) requestList,
    required TResult Function(_FirebaseListReady value) firebaseListReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Delete value) delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestList value)? requestList,
    TResult? Function(_FirebaseListReady value)? firebaseListReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Delete value)? delete,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestList value)? requestList,
    TResult Function(_FirebaseListReady value)? firebaseListReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryEventCopyWith<$Res> {
  factory $HistoryEventCopyWith(
          HistoryEvent value, $Res Function(HistoryEvent) then) =
      _$HistoryEventCopyWithImpl<$Res, HistoryEvent>;
}

/// @nodoc
class _$HistoryEventCopyWithImpl<$Res, $Val extends HistoryEvent>
    implements $HistoryEventCopyWith<$Res> {
  _$HistoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RequestListCopyWith<$Res> {
  factory _$$_RequestListCopyWith(
          _$_RequestList value, $Res Function(_$_RequestList) then) =
      __$$_RequestListCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RequestListCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$_RequestList>
    implements _$$_RequestListCopyWith<$Res> {
  __$$_RequestListCopyWithImpl(
      _$_RequestList _value, $Res Function(_$_RequestList) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RequestList implements _RequestList {
  const _$_RequestList();

  @override
  String toString() {
    return 'HistoryEvent.requestList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RequestList);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestList,
    required TResult Function(Either<Failure, List<Recipe>> result)
        firebaseListReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(Recipe recipeToDelete) delete,
  }) {
    return requestList();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestList,
    TResult? Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(Recipe recipeToDelete)? delete,
  }) {
    return requestList?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestList,
    TResult Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(Recipe recipeToDelete)? delete,
    required TResult orElse(),
  }) {
    if (requestList != null) {
      return requestList();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestList value) requestList,
    required TResult Function(_FirebaseListReady value) firebaseListReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Delete value) delete,
  }) {
    return requestList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestList value)? requestList,
    TResult? Function(_FirebaseListReady value)? firebaseListReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Delete value)? delete,
  }) {
    return requestList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestList value)? requestList,
    TResult Function(_FirebaseListReady value)? firebaseListReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (requestList != null) {
      return requestList(this);
    }
    return orElse();
  }
}

abstract class _RequestList implements HistoryEvent {
  const factory _RequestList() = _$_RequestList;
}

/// @nodoc
abstract class _$$_FirebaseListReadyCopyWith<$Res> {
  factory _$$_FirebaseListReadyCopyWith(_$_FirebaseListReady value,
          $Res Function(_$_FirebaseListReady) then) =
      __$$_FirebaseListReadyCopyWithImpl<$Res>;
  @useResult
  $Res call({Either<Failure, List<Recipe>> result});
}

/// @nodoc
class __$$_FirebaseListReadyCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$_FirebaseListReady>
    implements _$$_FirebaseListReadyCopyWith<$Res> {
  __$$_FirebaseListReadyCopyWithImpl(
      _$_FirebaseListReady _value, $Res Function(_$_FirebaseListReady) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
  }) {
    return _then(_$_FirebaseListReady(
      null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Either<Failure, List<Recipe>>,
    ));
  }
}

/// @nodoc

class _$_FirebaseListReady implements _FirebaseListReady {
  const _$_FirebaseListReady(this.result);

  @override
  final Either<Failure, List<Recipe>> result;

  @override
  String toString() {
    return 'HistoryEvent.firebaseListReady(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FirebaseListReady &&
            (identical(other.result, result) || other.result == result));
  }

  @override
  int get hashCode => Object.hash(runtimeType, result);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FirebaseListReadyCopyWith<_$_FirebaseListReady> get copyWith =>
      __$$_FirebaseListReadyCopyWithImpl<_$_FirebaseListReady>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestList,
    required TResult Function(Either<Failure, List<Recipe>> result)
        firebaseListReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(Recipe recipeToDelete) delete,
  }) {
    return firebaseListReady(result);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestList,
    TResult? Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(Recipe recipeToDelete)? delete,
  }) {
    return firebaseListReady?.call(result);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestList,
    TResult Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(Recipe recipeToDelete)? delete,
    required TResult orElse(),
  }) {
    if (firebaseListReady != null) {
      return firebaseListReady(result);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestList value) requestList,
    required TResult Function(_FirebaseListReady value) firebaseListReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Delete value) delete,
  }) {
    return firebaseListReady(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestList value)? requestList,
    TResult? Function(_FirebaseListReady value)? firebaseListReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Delete value)? delete,
  }) {
    return firebaseListReady?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestList value)? requestList,
    TResult Function(_FirebaseListReady value)? firebaseListReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (firebaseListReady != null) {
      return firebaseListReady(this);
    }
    return orElse();
  }
}

abstract class _FirebaseListReady implements HistoryEvent {
  const factory _FirebaseListReady(final Either<Failure, List<Recipe>> result) =
      _$_FirebaseListReady;

  Either<Failure, List<Recipe>> get result;
  @JsonKey(ignore: true)
  _$$_FirebaseListReadyCopyWith<_$_FirebaseListReady> get copyWith =>
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
    extends _$HistoryEventCopyWithImpl<$Res, _$_Sort>
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
    return 'HistoryEvent.sort(order: $order, unsortedList: $unsortedList)';
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
    required TResult Function() requestList,
    required TResult Function(Either<Failure, List<Recipe>> result)
        firebaseListReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(Recipe recipeToDelete) delete,
  }) {
    return sort(order, unsortedList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestList,
    TResult? Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(Recipe recipeToDelete)? delete,
  }) {
    return sort?.call(order, unsortedList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestList,
    TResult Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(Recipe recipeToDelete)? delete,
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
    required TResult Function(_RequestList value) requestList,
    required TResult Function(_FirebaseListReady value) firebaseListReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Delete value) delete,
  }) {
    return sort(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestList value)? requestList,
    TResult? Function(_FirebaseListReady value)? firebaseListReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Delete value)? delete,
  }) {
    return sort?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestList value)? requestList,
    TResult Function(_FirebaseListReady value)? firebaseListReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (sort != null) {
      return sort(this);
    }
    return orElse();
  }
}

abstract class _Sort implements HistoryEvent {
  const factory _Sort(
      final SortingOrder order, final List<Recipe> unsortedList) = _$_Sort;

  SortingOrder get order;
  List<Recipe> get unsortedList;
  @JsonKey(ignore: true)
  _$$_SortCopyWith<_$_Sort> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeleteCopyWith<$Res> {
  factory _$$_DeleteCopyWith(_$_Delete value, $Res Function(_$_Delete) then) =
      __$$_DeleteCopyWithImpl<$Res>;
  @useResult
  $Res call({Recipe recipeToDelete});

  $RecipeCopyWith<$Res> get recipeToDelete;
}

/// @nodoc
class __$$_DeleteCopyWithImpl<$Res>
    extends _$HistoryEventCopyWithImpl<$Res, _$_Delete>
    implements _$$_DeleteCopyWith<$Res> {
  __$$_DeleteCopyWithImpl(_$_Delete _value, $Res Function(_$_Delete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipeToDelete = null,
  }) {
    return _then(_$_Delete(
      null == recipeToDelete
          ? _value.recipeToDelete
          : recipeToDelete // ignore: cast_nullable_to_non_nullable
              as Recipe,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $RecipeCopyWith<$Res> get recipeToDelete {
    return $RecipeCopyWith<$Res>(_value.recipeToDelete, (value) {
      return _then(_value.copyWith(recipeToDelete: value));
    });
  }
}

/// @nodoc

class _$_Delete implements _Delete {
  const _$_Delete(this.recipeToDelete);

  @override
  final Recipe recipeToDelete;

  @override
  String toString() {
    return 'HistoryEvent.delete(recipeToDelete: $recipeToDelete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Delete &&
            (identical(other.recipeToDelete, recipeToDelete) ||
                other.recipeToDelete == recipeToDelete));
  }

  @override
  int get hashCode => Object.hash(runtimeType, recipeToDelete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      __$$_DeleteCopyWithImpl<_$_Delete>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() requestList,
    required TResult Function(Either<Failure, List<Recipe>> result)
        firebaseListReady,
    required TResult Function(SortingOrder order, List<Recipe> unsortedList)
        sort,
    required TResult Function(Recipe recipeToDelete) delete,
  }) {
    return delete(recipeToDelete);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? requestList,
    TResult? Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult? Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult? Function(Recipe recipeToDelete)? delete,
  }) {
    return delete?.call(recipeToDelete);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? requestList,
    TResult Function(Either<Failure, List<Recipe>> result)? firebaseListReady,
    TResult Function(SortingOrder order, List<Recipe> unsortedList)? sort,
    TResult Function(Recipe recipeToDelete)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(recipeToDelete);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RequestList value) requestList,
    required TResult Function(_FirebaseListReady value) firebaseListReady,
    required TResult Function(_Sort value) sort,
    required TResult Function(_Delete value) delete,
  }) {
    return delete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RequestList value)? requestList,
    TResult? Function(_FirebaseListReady value)? firebaseListReady,
    TResult? Function(_Sort value)? sort,
    TResult? Function(_Delete value)? delete,
  }) {
    return delete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RequestList value)? requestList,
    TResult Function(_FirebaseListReady value)? firebaseListReady,
    TResult Function(_Sort value)? sort,
    TResult Function(_Delete value)? delete,
    required TResult orElse(),
  }) {
    if (delete != null) {
      return delete(this);
    }
    return orElse();
  }
}

abstract class _Delete implements HistoryEvent {
  const factory _Delete(final Recipe recipeToDelete) = _$_Delete;

  Recipe get recipeToDelete;
  @JsonKey(ignore: true)
  _$$_DeleteCopyWith<_$_Delete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HistoryState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Recipe> recipesList) resultFirebaseList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipesList)? resultFirebaseList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipesList)? resultFirebaseList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ResultFirebaseList value) resultFirebaseList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ResultFirebaseList value)? resultFirebaseList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ResultFirebaseList value)? resultFirebaseList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HistoryStateCopyWith<$Res> {
  factory $HistoryStateCopyWith(
          HistoryState value, $Res Function(HistoryState) then) =
      _$HistoryStateCopyWithImpl<$Res, HistoryState>;
}

/// @nodoc
class _$HistoryStateCopyWithImpl<$Res, $Val extends HistoryState>
    implements $HistoryStateCopyWith<$Res> {
  _$HistoryStateCopyWithImpl(this._value, this._then);

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
    extends _$HistoryStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'HistoryState.initial()';
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
    required TResult Function(List<Recipe> recipesList) resultFirebaseList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipesList)? resultFirebaseList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipesList)? resultFirebaseList,
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
    required TResult Function(_ResultFirebaseList value) resultFirebaseList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ResultFirebaseList value)? resultFirebaseList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ResultFirebaseList value)? resultFirebaseList,
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

abstract class _Initial implements HistoryState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_ResultFirebaseListCopyWith<$Res> {
  factory _$$_ResultFirebaseListCopyWith(_$_ResultFirebaseList value,
          $Res Function(_$_ResultFirebaseList) then) =
      __$$_ResultFirebaseListCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Recipe> recipesList});
}

/// @nodoc
class __$$_ResultFirebaseListCopyWithImpl<$Res>
    extends _$HistoryStateCopyWithImpl<$Res, _$_ResultFirebaseList>
    implements _$$_ResultFirebaseListCopyWith<$Res> {
  __$$_ResultFirebaseListCopyWithImpl(
      _$_ResultFirebaseList _value, $Res Function(_$_ResultFirebaseList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipesList = null,
  }) {
    return _then(_$_ResultFirebaseList(
      null == recipesList
          ? _value._recipesList
          : recipesList // ignore: cast_nullable_to_non_nullable
              as List<Recipe>,
    ));
  }
}

/// @nodoc

class _$_ResultFirebaseList implements _ResultFirebaseList {
  const _$_ResultFirebaseList(final List<Recipe> recipesList)
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
    return 'HistoryState.resultFirebaseList(recipesList: $recipesList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResultFirebaseList &&
            const DeepCollectionEquality()
                .equals(other._recipesList, _recipesList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_recipesList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResultFirebaseListCopyWith<_$_ResultFirebaseList> get copyWith =>
      __$$_ResultFirebaseListCopyWithImpl<_$_ResultFirebaseList>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Recipe> recipesList) resultFirebaseList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return resultFirebaseList(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipesList)? resultFirebaseList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return resultFirebaseList?.call(recipesList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipesList)? resultFirebaseList,
    TResult Function()? loading,
    TResult Function(String errorMessage)? error,
    required TResult orElse(),
  }) {
    if (resultFirebaseList != null) {
      return resultFirebaseList(recipesList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_ResultFirebaseList value) resultFirebaseList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return resultFirebaseList(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ResultFirebaseList value)? resultFirebaseList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return resultFirebaseList?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ResultFirebaseList value)? resultFirebaseList,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (resultFirebaseList != null) {
      return resultFirebaseList(this);
    }
    return orElse();
  }
}

abstract class _ResultFirebaseList implements HistoryState {
  const factory _ResultFirebaseList(final List<Recipe> recipesList) =
      _$_ResultFirebaseList;

  List<Recipe> get recipesList;
  @JsonKey(ignore: true)
  _$$_ResultFirebaseListCopyWith<_$_ResultFirebaseList> get copyWith =>
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
    extends _$HistoryStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'HistoryState.loading()';
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
    required TResult Function(List<Recipe> recipesList) resultFirebaseList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipesList)? resultFirebaseList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipesList)? resultFirebaseList,
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
    required TResult Function(_ResultFirebaseList value) resultFirebaseList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ResultFirebaseList value)? resultFirebaseList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ResultFirebaseList value)? resultFirebaseList,
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

abstract class _Loading implements HistoryState {
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
    extends _$HistoryStateCopyWithImpl<$Res, _$_Error>
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
    return 'HistoryState.error(errorMessage: $errorMessage)';
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
    required TResult Function(List<Recipe> recipesList) resultFirebaseList,
    required TResult Function() loading,
    required TResult Function(String errorMessage) error,
  }) {
    return error(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Recipe> recipesList)? resultFirebaseList,
    TResult? Function()? loading,
    TResult? Function(String errorMessage)? error,
  }) {
    return error?.call(errorMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Recipe> recipesList)? resultFirebaseList,
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
    required TResult Function(_ResultFirebaseList value) resultFirebaseList,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_ResultFirebaseList value)? resultFirebaseList,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_ResultFirebaseList value)? resultFirebaseList,
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

abstract class _Error implements HistoryState {
  const factory _Error(final String errorMessage) = _$_Error;

  String get errorMessage;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
