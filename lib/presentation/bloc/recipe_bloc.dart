import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/domain/usecases/get_recipes_from_api.dart';

part 'recipe_event.dart';

part 'recipe_state.dart';

part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  final GetRecipesFromApi getRecipesFromApi;

  RecipeBloc(this.getRecipesFromApi) : super(const RecipeState.initial([])) {
    on<RecipeEvent>(
      (event, emit) async {
        event.when(
          search: (searchQuery) async {
            final eitherResultOrFailure = await getRecipesFromApi.call(
              ApiSearchParams(searchQuery: searchQuery),
            );
            eitherResultOrFailure.fold(
              (l) => print('Got error'),
              (r) => print('Got list\n$r'),
            );
          },
        );
      },
    );
  }
}
