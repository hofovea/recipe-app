import 'package:get_it/get_it.dart';
import 'package:recipe_app/data/datasources/api_datasource.dart';
import 'package:recipe_app/data/datasources/firebase_datasource.dart';
import 'package:recipe_app/data/repositories/recipe_repository_impl.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';
import 'package:recipe_app/domain/usecases/add_recipes_to_firebase.dart';
import 'package:recipe_app/domain/usecases/delete_recipe_from_firebase.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_api.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_firebase.dart';
import 'package:http/http.dart' as http;
import 'package:recipe_app/presentation/blocs/history_bloc/history_bloc.dart';
import 'package:recipe_app/presentation/blocs/recipe_bloc/recipe_bloc.dart';

final serviceLocator = GetIt.instance;

Future<void> init() async {
  //blocs
  serviceLocator.registerFactory(
    () => RecipeBloc(
      serviceLocator(),
      serviceLocator(),
    ),
  );

serviceLocator.registerFactory(
    () => HistoryBloc(
      serviceLocator(),
      serviceLocator(),
    ),
  );

  //use cases
  serviceLocator.registerLazySingleton(
    () => GetRecipesFromApi(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => GetRecipesFromFirebase(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => AddRecipesToFirebase(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton(
    () => DeleteRecipeFromFirebase(
      serviceLocator(),
    ),
  );

  //repositories
  serviceLocator.registerLazySingleton<RecipeRepository>(
    () => RecipeRepositoryImpl(
      serviceLocator(),
      serviceLocator(),
    ),
  );

  //data sources
  serviceLocator.registerLazySingleton<ApiDatasource>(
    () => ApiDatasourceImpl(
      serviceLocator(),
    ),
  );

  serviceLocator.registerLazySingleton<FirebaseDatasource>(
    () => FirebaseDatasourceImpl(),
  );

  //external packages
  serviceLocator.registerLazySingleton(
    () => http.Client(),
  );
}
