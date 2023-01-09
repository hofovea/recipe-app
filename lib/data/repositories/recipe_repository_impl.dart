import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/error/exceptions.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/data/datasources/api_datasource.dart';
import 'package:recipe_app/data/datasources/firebase_datasource.dart';
import 'package:recipe_app/data/dto/recipe_dto/recipe_dto.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final ApiDatasource _apiDatasource;
  final FirebaseDatasource _firebaseDatasource;

  RecipeRepositoryImpl(this._apiDatasource, this._firebaseDatasource);

  @override
  Future<Either<Failure, List<Recipe>>> getRecipesFromApi({required String searchQuery}) async {
    try {
      final List<RecipeDto> fetchedDtoList = await _apiDatasource.getRecipes(searchQuery);
      return Right(
        fetchedDtoList
            .map(
              (dto) => Recipe(
                  label: dto.label,
                  imageUrl: dto.image,
                  ingredients: dto.ingredientLines,
                  calories: dto.calories.toInt()),
            )
            .toList(),
      );
    } on ServerException {
      return Left(ServerFailure());
    }
  }

  @override
  Future<Either<Failure, void>> addRecipesToFirebase({required List<Recipe> recipesToAdd}) async {
    try {
      final void result = await _firebaseDatasource.addRecipes(
        recipesToAdd
            .map(
              (recipe) => RecipeDto(
                label: recipe.label,
                image: recipe.imageUrl,
                ingredientLines: recipe.ingredients,
                calories: recipe.calories.toDouble(),
              ),
            )
            .toList(),
      );
      return Right(result);
    } on Exception catch (e) {
      return Left(FirebaseFailure());
    }
  }

  @override
  Future<Either<Failure, void>> deleteRecipeFromFirebase({required Recipe recipeToDelete}) async {
    try {
      final void result = await _firebaseDatasource.deleteRecipe(
        RecipeDto(
          label: recipeToDelete.label,
          image: recipeToDelete.imageUrl,
          ingredientLines: recipeToDelete.ingredients,
          calories: recipeToDelete.calories.toDouble(),
        ),
      );
      return Right(result);
    } on Exception catch (e) {
      return Left(FirebaseFailure());
    }
  }

  @override
  Future<Either<Failure, List<Recipe>>> getRecipesFromFirebase() async {
    try {
      final List<RecipeDto> fetchedDtoList = await _firebaseDatasource.getRecipes();
      return Right(
        fetchedDtoList
            .map(
              (dto) => Recipe(
                  label: dto.label,
                  imageUrl: dto.image,
                  ingredients: dto.ingredientLines,
                  calories: dto.calories.toInt()),
            )
            .toList(),
      );
    } on Exception catch (e) {
      return Left(FirebaseFailure());
    }
  }
}
