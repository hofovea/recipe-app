import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/core/connectivity/network_connectivity.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/presentation/blocs/connectivity_bloc/connectivity_bloc.dart';
import 'package:recipe_app/presentation/blocs/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_app/presentation/screens/search_screen/util/sorting_order.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/backgrounds/empty_search_background.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/backgrounds/initial_search_background.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/loading.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/menu_drawer.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/recipe_tile.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/search_bar/search_bar.dart';
import 'package:recipe_app/presentation/style/app_style.dart';
import 'package:recipe_app/di_container.dart' as di;

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  static const List<SortingOrder> _dropdownMenu = [
    SortingOrder.notSorted,
    SortingOrder.ascending,
    SortingOrder.descending
  ];
  SortingOrder _currentOrder = _dropdownMenu.first;

  final NetworkConnectivity _connectivity = NetworkConnectivity.instance;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.serviceLocator<RecipeBloc>(),
      child: BlocConsumer<ConnectivityBloc, ConnectivityState>(
        listener: (context, state) {
          state.when(
            connectionState: (isConnected) {
              if (!isConnected) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    duration: const Duration(seconds: 10),
                    content: Text(
                      AppLocalizations.of(context)!.translate('no_connection')!,
                      textAlign: TextAlign.center,
                      style: AppStyle.whiteTextStyle,
                    ),
                  ),
                );
              }
            },
          );
        },
        builder: (context, state) {
          return state.when(
            connectionState: (isConnected) {
              final recipeBloc = BlocProvider.of<RecipeBloc>(context);
              return SafeArea(
                child: Scaffold(
                  appBar: AppBar(
                    title: Text(
                      AppLocalizations.of(context)!.translate('title')!,
                    ),
                  ),
                  drawer: const MenuDrawer(),
                  body: Center(
                    child: Column(
                      children: [
                        const SearchBar(),
                        BlocBuilder<RecipeBloc, RecipeState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () {
                                return const InitialSearchBackground();
                              },
                              resultList: (List<Recipe> recipesList) {
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
                                                color: AppStyle.swipeToAddColor,
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                                  child: Icon(Icons.add, size: 36),
                                                ),
                                              ),
                                              confirmDismiss: (direction) async {
                                                if (isConnected) {
                                                  recipeBloc
                                                      .add(RecipeEvent.add([recipesList[index]]));
                                                }
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
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Visibility(
                                            visible: isConnected,
                                            child: ElevatedButton(
                                              onPressed: () {
                                                recipeBloc.add(RecipeEvent.add(recipesList));
                                              },
                                              style: AppStyle.defaultButtonStyle,
                                              child: Text(
                                                AppLocalizations.of(context)!.translate('save')!,
                                                style: AppStyle.saveButtonTextStyle,
                                              ),
                                            ),
                                          ),
                                          DropdownButton<SortingOrder>(
                                            value: _currentOrder,
                                            items:
                                                _dropdownMenu.map<DropdownMenuItem<SortingOrder>>(
                                              (SortingOrder value) {
                                                switch (value) {
                                                  case SortingOrder.ascending:
                                                    {
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Row(
                                                          children: [
                                                            Text(AppLocalizations.of(context)!
                                                                .translate('ascending')!),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            const Icon(Icons.arrow_circle_down),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                  case SortingOrder.descending:
                                                    {
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Row(
                                                          children: [
                                                            Text(AppLocalizations.of(context)!
                                                                .translate('descending')!),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            const Icon(Icons.arrow_circle_up),
                                                          ],
                                                        ),
                                                      );
                                                    }
                                                  case SortingOrder.notSorted:
                                                    {
                                                      return DropdownMenuItem(
                                                        value: value,
                                                        child: Text(AppLocalizations.of(context)!
                                                            .translate('notSorted')!),
                                                      );
                                                    }
                                                }
                                              },
                                            ).toList(),
                                            onChanged: (SortingOrder? value) {
                                              if (value != null) {
                                                _currentOrder = value;
                                                recipeBloc.add(
                                                    RecipeEvent.sort(_currentOrder, recipesList));
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
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _connectivity.disposeStream();
    super.dispose();
  }
}
