import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:recipe_app/data/dto/recipe_dto/recipe_dto.dart';

abstract class FirebaseDatasource {
  Future<List<RecipeDto>> getRecipes();

  Future<void> addRecipes(List<RecipeDto> recipesToAdd);

  Future<void> deleteRecipe(RecipeDto recipeToDelete);
}

class FirebaseDatasourceImpl implements FirebaseDatasource {
  bool _needSetUp = true;
  final Map<RecipeDto, String> _existingIdMap = {};

  final CollectionReference _recipesCollection = FirebaseFirestore.instance.collection('recipes');

  Future<void> _setUpDatasource() async {
    final collectionSnapshot = await _recipesCollection.get();
    for (var doc in collectionSnapshot.docs) {
      final docAsMap = doc.data()! as Map<String, dynamic>;
      _existingIdMap[RecipeDto.fromJson(docAsMap)] = doc.id;
    }
    _needSetUp = false;
  }

  bool _isExists(List<RecipeDto> collectionToCheck, RecipeDto item) {
    for (var i in collectionToCheck) {
      if (item.label == i.label) {
        return true;
      }
    }
    return false;
  }

  @override
  Future<void> addRecipes(List<RecipeDto> recipesToAdd) async {
    if (_needSetUp) {
      await _setUpDatasource();
    }
    for (RecipeDto recipeDto in recipesToAdd) {
      if (!_isExists(_existingIdMap.keys.toList(), recipeDto)) {
        final createdDoc = await _recipesCollection.add(recipeDto.toJson());
        _existingIdMap[recipeDto] = createdDoc.id;
      }
    }
  }

  @override
  Future<void> deleteRecipe(RecipeDto recipeToDelete) async {
    if (_needSetUp) {
      await _setUpDatasource();
    }
    final keys = _existingIdMap.keys.toList();
    if (_isExists(keys, recipeToDelete)) {
      final itemFromMap =
          _existingIdMap.keys.firstWhere((element) => element.label == recipeToDelete.label);
      final String? idToDelete = _existingIdMap[itemFromMap];
      if (idToDelete != null) {
        await _recipesCollection.doc(idToDelete).delete();
        _existingIdMap.remove(recipeToDelete);
      }
    }
  }

  @override
  Future<List<RecipeDto>> getRecipes() async {
    if (_needSetUp) {
      await _setUpDatasource();
    }
    final collectionSnapshot = await _recipesCollection.get();
    return collectionSnapshot.docs.map(
      (doc) {
        final docAsMap = doc.data()! as Map<String, dynamic>;
        return RecipeDto.fromJson(docAsMap);
      },
    ).toList();
  }
}
