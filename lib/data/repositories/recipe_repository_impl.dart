import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/error/exceptions.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/data/datasources/api_datasource.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';

class RecipeRepositoryImpl implements RecipeRepository {
  final ApiDatasource _apiDatasource;

  RecipeRepositoryImpl(this._apiDatasource);

  @override
  Future<Either<Failure, List<Recipe>>> getRecipesFromApi({required String searchQuery}) async {
    try {
      final fetchedDtoList = await _apiDatasource.getRecipes(searchQuery);
      return Right(
        fetchedDtoList
            .map((dto) => Recipe(
                label: dto.label,
                imageUrl: dto.image,
                ingredients: dto.ingredientLines,
                calories: dto.calories.toInt()))
            .toList(),
      );
    } on ServerException {
      return Left(ServerFailure());
    }
  }
}
