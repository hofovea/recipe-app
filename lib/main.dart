import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/screens/logo_screen/logo_screen.dart';
import 'package:recipe_app/presentation/style/app_style.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: AppStyle.mainThemeColor,
      ),
      home: const LogoScreen()
    );
  }
}
