import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/core/usecase/usecase.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';

class GetRecipesFromApi extends UseCase<List<Recipe>, ApiSearchParams> {
  final RecipeRepository _repository;

  GetRecipesFromApi(this._repository);

  @override
  Future<Either<Failure, List<Recipe>>> call(ApiSearchParams params) async {
    return await _repository.getRecipesFromApi(searchQuery: params.searchQuery);
  }
}

class ApiSearchParams extends Equatable {
  final String searchQuery;

  const ApiSearchParams({required this.searchQuery});

  @override
  List<Object?> get props => [searchQuery];
}
