import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/presentation/blocs/connectivity_bloc/connectivity_bloc.dart';
import 'package:recipe_app/presentation/blocs/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/search_bar/debouncer.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  late Debouncer _debouncer;
  String _latestInput = '';

  @override
  void initState() {
    super.initState();
    _debouncer = Debouncer();
  }

  @override
  Widget build(BuildContext context) {
    final recipeBloc = BlocProvider.of<RecipeBloc>(context);
    return BlocBuilder<ConnectivityBloc, ConnectivityState>(
      builder: (context, state) {
        return state.when(
          connectionState: (isConnected) {
            return Container(
              padding: const EdgeInsets.all(15),
              child: TextField(
                textInputAction: TextInputAction.search,
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(25.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Colors.blue,
                    ),
                  ),
                  suffixIcon: const InkWell(
                    child: Icon(Icons.search),
                  ),
                  contentPadding: const EdgeInsets.all(15.0),
                  hintText: AppLocalizations.of(context)!.translate('search'),
                ),
                onChanged: (searchQuery) {
                  if (isConnected && searchQuery.trim().isNotEmpty && _latestInput != searchQuery) {
                    _latestInput = searchQuery;
                    _debouncer.run(
                      () {
                        recipeBloc.add(RecipeEvent.search(searchQuery));
                      },
                    );
                  }
                },
              ),
            );
          },
        );
      },
    );
  }

  @override
  void dispose() {
    _debouncer.stop();
    super.dispose();
  }
}
