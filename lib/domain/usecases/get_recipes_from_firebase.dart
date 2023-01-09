import 'package:dartz/dartz.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/core/usecase/usecase.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';

class GetRecipesFromFirebase extends UseCase<List<Recipe>, NoParams> {
  final RecipeRepository _repository;

  GetRecipesFromFirebase(this._repository);

  @override
  Future<Either<Failure, List<Recipe>>> call(NoParams params) async {
    return await _repository.getRecipesFromFirebase();
  }
}
