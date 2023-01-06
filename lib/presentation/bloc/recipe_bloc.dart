import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipe_app/domain/entities/recipe.dart';

part 'recipe_event.dart';
part 'recipe_state.dart';
part 'recipe_bloc.freezed.dart';

class RecipeBloc extends Bloc<RecipeEvent, RecipeState> {
  RecipeBloc() : super(const RecipeState.initial([])) {
    on<RecipeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
