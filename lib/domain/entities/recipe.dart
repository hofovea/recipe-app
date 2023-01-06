import 'package:freezed_annotation/freezed_annotation.dart';

part 'recipe.freezed.dart';

@freezed
class Recipe with _$Recipe {
  const factory Recipe({
    required String label,
    required String imageUrl,
    required List<String> ingredients,
    required int calories,
  }) = _Recipe;
}
