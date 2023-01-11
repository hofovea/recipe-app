import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/domain/entities/recipe.dart';
import 'package:recipe_app/presentation/blocs/connectivity_bloc/connectivity_bloc.dart';
import 'package:recipe_app/presentation/blocs/history_bloc/history_bloc.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_app/presentation/screens/history_screen/widgets/backgrounds/empty_list_background.dart';
import 'package:recipe_app/presentation/screens/search_screen/util/sorting_order.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/loading.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/recipe_tile.dart';
import 'package:recipe_app/presentation/style/app_style.dart';
import 'package:recipe_app/di_container.dart' as di;

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  static const List<SortingOrder> _dropdownMenu = [
    SortingOrder.notSorted,
    SortingOrder.ascending,
    SortingOrder.descending
  ];
  SortingOrder _currentOrder = _dropdownMenu.first;

  @override
  void initState() {
    super.initState();
    BlocProvider.of<ConnectivityBloc>(context)
        .add(const ConnectivityEvent.listenToConnectionState());
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            AppLocalizations.of(context)!.translate('title')!,
          ),
        ),
        body: BlocProvider(
          create: (context) =>
              di.serviceLocator<HistoryBloc>()..add(const HistoryEvent.requestList()),
          child: Center(
            child: Column(
              children: [
                BlocConsumer<ConnectivityBloc, ConnectivityState>(
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
                        final historyBloc = BlocProvider.of<HistoryBloc>(context);
                        return BlocBuilder<HistoryBloc, HistoryState>(
                          builder: (context, state) {
                            return state.when(
                              initial: () {
                                return const EmptyListBackground();
                              },
                              resultFirebaseList: (List<Recipe> recipesList) {
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
                                                color: AppStyle.swipeToRemoveColor,
                                                child: const Padding(
                                                  padding: EdgeInsets.symmetric(horizontal: 20.0),
                                                  child: Icon(Icons.delete, size: 36),
                                                ),
                                              ),
                                              confirmDismiss: (direction) async {
                                                if (isConnected) {
                                                  historyBloc
                                                      .add(HistoryEvent.delete(recipesList[index]));
                                                  return true;
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
                                                historyBloc.add(
                                                    HistoryEvent.sort(_currentOrder, recipesList));
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
                            );
                          },
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
