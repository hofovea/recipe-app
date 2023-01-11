// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connectivity_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectivityEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenToConnectionState,
    required TResult Function(bool isConnected) gotConnectionStateResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenToConnectionState,
    TResult? Function(bool isConnected)? gotConnectionStateResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenToConnectionState,
    TResult Function(bool isConnected)? gotConnectionStateResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenToConnectionState value)
        listenToConnectionState,
    required TResult Function(_GotConnectionStateResult value)
        gotConnectionStateResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenToConnectionState value)? listenToConnectionState,
    TResult? Function(_GotConnectionStateResult value)?
        gotConnectionStateResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenToConnectionState value)? listenToConnectionState,
    TResult Function(_GotConnectionStateResult value)? gotConnectionStateResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityEventCopyWith<$Res> {
  factory $ConnectivityEventCopyWith(
          ConnectivityEvent value, $Res Function(ConnectivityEvent) then) =
      _$ConnectivityEventCopyWithImpl<$Res, ConnectivityEvent>;
}

/// @nodoc
class _$ConnectivityEventCopyWithImpl<$Res, $Val extends ConnectivityEvent>
    implements $ConnectivityEventCopyWith<$Res> {
  _$ConnectivityEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ListenToConnectionStateCopyWith<$Res> {
  factory _$$_ListenToConnectionStateCopyWith(_$_ListenToConnectionState value,
          $Res Function(_$_ListenToConnectionState) then) =
      __$$_ListenToConnectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ListenToConnectionStateCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$_ListenToConnectionState>
    implements _$$_ListenToConnectionStateCopyWith<$Res> {
  __$$_ListenToConnectionStateCopyWithImpl(_$_ListenToConnectionState _value,
      $Res Function(_$_ListenToConnectionState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ListenToConnectionState implements _ListenToConnectionState {
  const _$_ListenToConnectionState();

  @override
  String toString() {
    return 'ConnectivityEvent.listenToConnectionState()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListenToConnectionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenToConnectionState,
    required TResult Function(bool isConnected) gotConnectionStateResult,
  }) {
    return listenToConnectionState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenToConnectionState,
    TResult? Function(bool isConnected)? gotConnectionStateResult,
  }) {
    return listenToConnectionState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenToConnectionState,
    TResult Function(bool isConnected)? gotConnectionStateResult,
    required TResult orElse(),
  }) {
    if (listenToConnectionState != null) {
      return listenToConnectionState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenToConnectionState value)
        listenToConnectionState,
    required TResult Function(_GotConnectionStateResult value)
        gotConnectionStateResult,
  }) {
    return listenToConnectionState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenToConnectionState value)? listenToConnectionState,
    TResult? Function(_GotConnectionStateResult value)?
        gotConnectionStateResult,
  }) {
    return listenToConnectionState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenToConnectionState value)? listenToConnectionState,
    TResult Function(_GotConnectionStateResult value)? gotConnectionStateResult,
    required TResult orElse(),
  }) {
    if (listenToConnectionState != null) {
      return listenToConnectionState(this);
    }
    return orElse();
  }
}

abstract class _ListenToConnectionState implements ConnectivityEvent {
  const factory _ListenToConnectionState() = _$_ListenToConnectionState;
}

/// @nodoc
abstract class _$$_GotConnectionStateResultCopyWith<$Res> {
  factory _$$_GotConnectionStateResultCopyWith(
          _$_GotConnectionStateResult value,
          $Res Function(_$_GotConnectionStateResult) then) =
      __$$_GotConnectionStateResultCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$_GotConnectionStateResultCopyWithImpl<$Res>
    extends _$ConnectivityEventCopyWithImpl<$Res, _$_GotConnectionStateResult>
    implements _$$_GotConnectionStateResultCopyWith<$Res> {
  __$$_GotConnectionStateResultCopyWithImpl(_$_GotConnectionStateResult _value,
      $Res Function(_$_GotConnectionStateResult) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$_GotConnectionStateResult(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_GotConnectionStateResult implements _GotConnectionStateResult {
  const _$_GotConnectionStateResult(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'ConnectivityEvent.gotConnectionStateResult(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GotConnectionStateResult &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GotConnectionStateResultCopyWith<_$_GotConnectionStateResult>
      get copyWith => __$$_GotConnectionStateResultCopyWithImpl<
          _$_GotConnectionStateResult>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() listenToConnectionState,
    required TResult Function(bool isConnected) gotConnectionStateResult,
  }) {
    return gotConnectionStateResult(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? listenToConnectionState,
    TResult? Function(bool isConnected)? gotConnectionStateResult,
  }) {
    return gotConnectionStateResult?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? listenToConnectionState,
    TResult Function(bool isConnected)? gotConnectionStateResult,
    required TResult orElse(),
  }) {
    if (gotConnectionStateResult != null) {
      return gotConnectionStateResult(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListenToConnectionState value)
        listenToConnectionState,
    required TResult Function(_GotConnectionStateResult value)
        gotConnectionStateResult,
  }) {
    return gotConnectionStateResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ListenToConnectionState value)? listenToConnectionState,
    TResult? Function(_GotConnectionStateResult value)?
        gotConnectionStateResult,
  }) {
    return gotConnectionStateResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ListenToConnectionState value)? listenToConnectionState,
    TResult Function(_GotConnectionStateResult value)? gotConnectionStateResult,
    required TResult orElse(),
  }) {
    if (gotConnectionStateResult != null) {
      return gotConnectionStateResult(this);
    }
    return orElse();
  }
}

abstract class _GotConnectionStateResult implements ConnectivityEvent {
  const factory _GotConnectionStateResult(final bool isConnected) =
      _$_GotConnectionStateResult;

  bool get isConnected;
  @JsonKey(ignore: true)
  _$$_GotConnectionStateResultCopyWith<_$_GotConnectionStateResult>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectivityState {
  bool get isConnected => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConnected) connectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConnected)? connectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConnected)? connectionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connectionState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connectionState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectivityStateCopyWith<ConnectivityState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectivityStateCopyWith<$Res> {
  factory $ConnectivityStateCopyWith(
          ConnectivityState value, $Res Function(ConnectivityState) then) =
      _$ConnectivityStateCopyWithImpl<$Res, ConnectivityState>;
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class _$ConnectivityStateCopyWithImpl<$Res, $Val extends ConnectivityState>
    implements $ConnectivityStateCopyWith<$Res> {
  _$ConnectivityStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_value.copyWith(
      isConnected: null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res>
    implements $ConnectivityStateCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isConnected});
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$ConnectivityStateCopyWithImpl<$Res, _$_Connected>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isConnected = null,
  }) {
    return _then(_$_Connected(
      null == isConnected
          ? _value.isConnected
          : isConnected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Connected implements _Connected {
  const _$_Connected(this.isConnected);

  @override
  final bool isConnected;

  @override
  String toString() {
    return 'ConnectivityState.connectionState(isConnected: $isConnected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connected &&
            (identical(other.isConnected, isConnected) ||
                other.isConnected == isConnected));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isConnected);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      __$$_ConnectedCopyWithImpl<_$_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isConnected) connectionState,
  }) {
    return connectionState(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isConnected)? connectionState,
  }) {
    return connectionState?.call(isConnected);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isConnected)? connectionState,
    required TResult orElse(),
  }) {
    if (connectionState != null) {
      return connectionState(isConnected);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connectionState,
  }) {
    return connectionState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connectionState,
  }) {
    return connectionState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connectionState,
    required TResult orElse(),
  }) {
    if (connectionState != null) {
      return connectionState(this);
    }
    return orElse();
  }
}

abstract class _Connected implements ConnectivityState {
  const factory _Connected(final bool isConnected) = _$_Connected;

  @override
  bool get isConnected;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}
