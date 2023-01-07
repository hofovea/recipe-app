import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe_dto.freezed.dart';

part 'recipe_dto.g.dart';

@freezed
class RecipeDto with _$RecipeDto {
  const factory RecipeDto({
    required String label,
    required String image,
    required List<String> ingredientLines,
    required double calories,
  }) = _RecipeDto;

  factory RecipeDto.fromJson(Map<String, dynamic> json) => _$RecipeDtoFromJson(json);
}
