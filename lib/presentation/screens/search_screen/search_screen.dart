import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/presentation/bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/screens/search_screen/widget/menu_drawer.dart';

class ScreenScreen extends StatefulWidget {
  const ScreenScreen({Key? key}) : super(key: key);

  @override
  State<ScreenScreen> createState() => _ScreenScreenState();
}

class _ScreenScreenState extends State<ScreenScreen> {
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
              Container(
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
                  onChanged: (string) {
                    recipeBloc.add(RecipeEvent.search(string));
                    // _debouncer.run(() {
                    //   setState(() {
                    //     userLists = ulist
                    //         .where(
                    //           (u) => (u.text.toLowerCase().contains(
                    //                 string.toLowerCase(),
                    //               )),
                    //         )
                    //         .toList();
                    //   });
                    // });
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
