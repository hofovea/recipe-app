// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recipe_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RecipeDto _$$_RecipeDtoFromJson(Map<String, dynamic> json) => _$_RecipeDto(
      label: json['label'] as String,
      image: json['image'] as String,
      ingredientLines: (json['ingredientLines'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      calories: (json['calories'] as num).toDouble(),
    );

Map<String, dynamic> _$$_RecipeDtoToJson(_$_RecipeDto instance) =>
    <String, dynamic>{
      'label': instance.label,
      'image': instance.image,
      'ingredientLines': instance.ingredientLines,
      'calories': instance.calories,
    };
