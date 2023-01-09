import 'package:flutter/material.dart';

class AppStyle {
  static const mainThemeAccent = Colors.tealAccent;
  static const mainThemeColor = Colors.teal;
  static final recipeImageBackgroundColor = Colors.grey[800];
  static final backgroundColor = Colors.teal[700];
  static const tabMenuItemColor = Colors.teal;
  static final swipeToAddColor = Colors.deepPurpleAccent[100];
  static const swipeToRemoveColor = Colors.red;

  static const saveButtonTextStyle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );

  static final defaultButtonStyle = ButtonStyle(
    backgroundColor: MaterialStatePropertyAll<Color>(Colors.deepPurpleAccent[100]!),
    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
      RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18.0), side: const BorderSide(color: Colors.black)),
    ),
    minimumSize: const MaterialStatePropertyAll<Size>(
      Size(90, 40),
    ),
  );

  static const defaultTextStyle = TextStyle(
    color: Colors.black,
    fontSize: 24,
  );

  static const whiteTextStyle = TextStyle(
    color: Colors.white,
    fontSize: 24,
  );
}
