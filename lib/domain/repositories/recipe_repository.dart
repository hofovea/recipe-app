import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/domain/entities/recipe.dart';

abstract class RecipeRepository {
  Future<Either<Failure, List<Recipe>>> getRecipesFromApi({required String searchQuery});
  Future<Either<Failure, List<Recipe>>> getRecipesFromFirebase();
  Future<Either<Failure, void>> addRecipesToFirebase({required List<Recipe> recipesToAdd});
  Future<Either<Failure, void>> deleteRecipeFromFirebase({required Recipe recipeToDelete});
}