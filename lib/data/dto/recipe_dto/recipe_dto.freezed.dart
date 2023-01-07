// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recipe_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RecipeDto _$RecipeDtoFromJson(Map<String, dynamic> json) {
  return _RecipeDto.fromJson(json);
}

/// @nodoc
mixin _$RecipeDto {
  String get label => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  List<String> get ingredientLines => throw _privateConstructorUsedError;
  double get calories => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipeDtoCopyWith<RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipeDtoCopyWith<$Res> {
  factory $RecipeDtoCopyWith(RecipeDto value, $Res Function(RecipeDto) then) =
      _$RecipeDtoCopyWithImpl<$Res, RecipeDto>;
  @useResult
  $Res call(
      {String label,
      String image,
      List<String> ingredientLines,
      double calories});
}

/// @nodoc
class _$RecipeDtoCopyWithImpl<$Res, $Val extends RecipeDto>
    implements $RecipeDtoCopyWith<$Res> {
  _$RecipeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? image = null,
    Object? ingredientLines = null,
    Object? calories = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientLines: null == ingredientLines
          ? _value.ingredientLines
          : ingredientLines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RecipeDtoCopyWith<$Res> implements $RecipeDtoCopyWith<$Res> {
  factory _$$_RecipeDtoCopyWith(
          _$_RecipeDto value, $Res Function(_$_RecipeDto) then) =
      __$$_RecipeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label,
      String image,
      List<String> ingredientLines,
      double calories});
}

/// @nodoc
class __$$_RecipeDtoCopyWithImpl<$Res>
    extends _$RecipeDtoCopyWithImpl<$Res, _$_RecipeDto>
    implements _$$_RecipeDtoCopyWith<$Res> {
  __$$_RecipeDtoCopyWithImpl(
      _$_RecipeDto _value, $Res Function(_$_RecipeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? image = null,
    Object? ingredientLines = null,
    Object? calories = null,
  }) {
    return _then(_$_RecipeDto(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      ingredientLines: null == ingredientLines
          ? _value._ingredientLines
          : ingredientLines // ignore: cast_nullable_to_non_nullable
              as List<String>,
      calories: null == calories
          ? _value.calories
          : calories // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RecipeDto implements _RecipeDto {
  const _$_RecipeDto(
      {required this.label,
      required this.image,
      required final List<String> ingredientLines,
      required this.calories})
      : _ingredientLines = ingredientLines;

  factory _$_RecipeDto.fromJson(Map<String, dynamic> json) =>
      _$$_RecipeDtoFromJson(json);

  @override
  final String label;
  @override
  final String image;
  final List<String> _ingredientLines;
  @override
  List<String> get ingredientLines {
    if (_ingredientLines is EqualUnmodifiableListView) return _ingredientLines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ingredientLines);
  }

  @override
  final double calories;

  @override
  String toString() {
    return 'RecipeDto(label: $label, image: $image, ingredientLines: $ingredientLines, calories: $calories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecipeDto &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.image, image) || other.image == image) &&
            const DeepCollectionEquality()
                .equals(other._ingredientLines, _ingredientLines) &&
            (identical(other.calories, calories) ||
                other.calories == calories));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, image,
      const DeepCollectionEquality().hash(_ingredientLines), calories);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RecipeDtoCopyWith<_$_RecipeDto> get copyWith =>
      __$$_RecipeDtoCopyWithImpl<_$_RecipeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipeDtoToJson(
      this,
    );
  }
}

abstract class _RecipeDto implements RecipeDto {
  const factory _RecipeDto(
      {required final String label,
      required final String image,
      required final List<String> ingredientLines,
      required final double calories}) = _$_RecipeDto;

  factory _RecipeDto.fromJson(Map<String, dynamic> json) =
      _$_RecipeDto.fromJson;

  @override
  String get label;
  @override
  String get image;
  @override
  List<String> get ingredientLines;
  @override
  double get calories;
  @override
  @JsonKey(ignore: true)
  _$$_RecipeDtoCopyWith<_$_RecipeDto> get copyWith =>
      throw _privateConstructorUsedError;
}
