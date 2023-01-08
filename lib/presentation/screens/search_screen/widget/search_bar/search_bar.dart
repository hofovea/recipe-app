import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/search_bar/debouncer.dart';

class SearchBar extends StatefulWidget {
  final RecipeBloc bloc;

  const SearchBar({Key? key, required this.bloc}) : super(key: key);

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
          hintText: 'Search ',
        ),
        onChanged: (searchQuery) {
          if (searchQuery.trim().isNotEmpty && _latestInput != searchQuery) {
            _latestInput = searchQuery;
            _debouncer.run(
              () {
                print('search fired');
                widget.bloc.add(RecipeEvent.search(searchQuery));
              },
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _debouncer.stop();
    super.dispose();
  }
}
