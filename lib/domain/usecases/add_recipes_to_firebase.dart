import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/core/error/failures.dart';
import 'package:recipe_app/core/usecase/usecase.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';

class AddRecipesToFirebase extends UseCase<void, AddParams> {
  final RecipeRepository _repository;

  AddRecipesToFirebase(this._repository);

  @override
  Future<Either<Failure, void>> call(AddParams params) async {
    return await _repository.addRecipesToFirebase(recipesToAdd: params.recipesToAdd);
  }
}

class AddParams extends Equatable {
  final List<Recipe> recipesToAdd;

  const AddParams({required this.recipesToAdd});

  @override
  List<Object?> get props => [recipesToAdd];
}
