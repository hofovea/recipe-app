import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/presentation/bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/backgrounds/empty_search_background.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/backgrounds/initial_search_background.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/loading.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/menu_drawer.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/recipe_tile.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/search_bar/search_bar.dart';
import 'package:recipe_app/presentation/style/app_style.dart';

class ScreenScreen extends StatefulWidget {
  const ScreenScreen({Key? key}) : super(key: key);

  @override
  State<ScreenScreen> createState() => _ScreenScreenState();
}

class _ScreenScreenState extends State<ScreenScreen> {
  static const List<String> _dropdownMenu = ['Ascending', 'Descending'];
  String _currentOrder = _dropdownMenu.first;

  @override
  Widget build(BuildContext context) {
    final recipeBloc = BlocProvider.of<RecipeBloc>(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Recipe app'),
        ),
        drawer: const MenuDrawer(),
        body: Center(
          child: Column(
            children: [
              SearchBar(
                bloc: recipeBloc,
              ),
              BlocBuilder<RecipeBloc, RecipeState>(
                builder: (context, state) {
                  return state.when(
                    initial: () {
                      return const InitialSearchBackground();
                    },
                    searchResult: (List<Recipe> recipesList) {
                      return Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: recipesList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Dismissible(
                                    key: UniqueKey(),
                                    direction: DismissDirection.startToEnd,
                                    background: Container(
                                      alignment: AlignmentDirectional.centerStart,
                                      color: AppStyle.swipeToRightColor,
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Icon(Icons.add, size: 36),
                                      ),
                                    ),
                                    confirmDismiss: (direction) async {
                                      return false;
                                    },
                                    child: RecipeTile(recipe: recipesList[index]),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  return const Divider();
                                },
                              ),
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    //widget.todoItemListBloc.add(const TodoItemListEvent.uploadSuccess());
                                  },
                                  style: AppStyle.defaultButtonStyle,
                                  child: const Text(
                                    'Save recipes',
                                    style: AppStyle.saveButtonTextStyle,
                                  ),
                                ),
                                DropdownButton(
                                  items: _dropdownMenu
                                      .map<DropdownMenuItem<String>>(
                                        (String value) => DropdownMenuItem(
                                          value: value,
                                          child: Text(value),
                                        ),
                                      )
                                      .toList(),
                                  onChanged: (String? value) {
                                    if (value != null) {
                                      _currentOrder = value;
                                      recipeBloc.add(RecipeEvent.sort(_currentOrder, recipesList));
                                    }
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                    loading: () {
                      return const Loading();
                    },
                    error: (String errorMessage) {
                      return Text(
                        errorMessage,
                        style: AppStyle.defaultTextStyle,
                      );
                    },
                    emptySearch: () {
                      return const EmptySearchBackground();
                    },
                    sorted: (List<Recipe> recipesList) {
                      return Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: ListView.separated(
                                scrollDirection: Axis.vertical,
                                shrinkWrap: true,
                                itemCount: recipesList.length,
                                itemBuilder: (BuildContext context, int index) {
                                  return Dismissible(
                                    key: UniqueKey(),
                                    direction: DismissDirection.startToEnd,
                                    background: Container(
                                      alignment: AlignmentDirectional.centerStart,
                                      color: AppStyle.swipeToRightColor,
                                      child: const Padding(
                                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                                        child: Icon(Icons.add, size: 36),
                                      ),
                                    ),
                                    confirmDismiss: (direction) async {
                                      return false;
                                    },
                                    child: RecipeTile(recipe: recipesList[index]),
                                  );
                                },
                                separatorBuilder: (BuildContext context, int index) {
                                  return const Divider();
                                },
                              ),
                            ),
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    //widget.todoItemListBloc.add(const TodoItemListEvent.uploadSuccess());
                                  },
                                  style: AppStyle.defaultButtonStyle,
                                  child: const Text(
                                    'Save recipes',
                                    style: AppStyle.saveButtonTextStyle,
                                  ),
                                ),
                                DropdownButton(
                                  items: _dropdownMenu
                                      .map<DropdownMenuItem<String>>(
                                        (String value) => DropdownMenuItem(
                                      value: value,
                                      child: Text(value),
                                    ),
                                  )
                                      .toList(),
                                  onChanged: (String? value) {
                                    if (value != null) {
                                      _currentOrder = value;
                                      recipeBloc.add(RecipeEvent.sort(_currentOrder, recipesList));
                                    }
                                  },
                                )
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
