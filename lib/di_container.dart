import 'package:get_it/get_it.dart';
import 'package:recipe_app/data/datasources/api_datasource.dart';
import 'package:recipe_app/data/repositories/recipe_repository_impl.dart';
import 'package:recipe_app/domain/repositories/recipe_repository.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_api.dart';
import 'package:recipe_app/presentation/bloc/recipe_bloc.dart';
import 'package:http/http.dart' as http;

final serviceLocator = GetIt.instance;

Future<void> init() async {
  //bloc
  serviceLocator.registerFactory(
    () => RecipeBloc(
      serviceLocator(),
    ),
  );

  //use cases
  serviceLocator.registerLazySingleton(
    () => GetRecipesFromApi(
      serviceLocator(),
    ),
  );

  //repositories
  serviceLocator.registerLazySingleton<RecipeRepository>(
    () => RecipeRepositoryImpl(
      serviceLocator(),
    ),
  );

  //data sources
  serviceLocator.registerLazySingleton<ApiDatasource>(
    () => ApiDatasourceImpl(
      serviceLocator(),
    ),
  );

  //external packages
  serviceLocator.registerLazySingleton(
    () => http.Client(),
  );
}
