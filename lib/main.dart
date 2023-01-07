import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/presentation/bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/screens/logo_screen/logo_screen.dart';
import 'package:recipe_app/presentation/style/app_style.dart';
import 'di_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.serviceLocator<RecipeBloc>(),
      child: MaterialApp(
          title: 'Flutter Demo',
          theme: ThemeData(
            primarySwatch: AppStyle.mainThemeColor,
          ),
          home: const LogoScreen()),
    );
  }
}
