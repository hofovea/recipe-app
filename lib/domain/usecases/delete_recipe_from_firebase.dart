import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/core/usecase/usecase.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';

class DeleteRecipeFromFirebase extends UseCase<void, DeleteParams> {
  final RecipeRepository _repository;

  DeleteRecipeFromFirebase(this._repository);

  @override
  Future<Either<Failure, void>> call(DeleteParams params) async {
    print('Inside use case: before call');
    return await _repository.deleteRecipeFromFirebase(recipeToDelete: params.recipeToDelete);
  }
}

class DeleteParams extends Equatable {
  final Recipe recipeToDelete;

  const DeleteParams({required this.recipeToDelete});

  @override
  List<Object?> get props => [recipeToDelete];
}
