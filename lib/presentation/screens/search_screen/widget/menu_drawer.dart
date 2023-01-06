import 'package:flutter/material.dart';
import 'package:recipe_app/presentation/screens/about_screen/about_screen.dart';
import 'package:recipe_app/presentation/screens/history_screen/history_screen.dart';
import 'package:recipe_app/presentation/style/app_style.dart';

class MenuDrawer extends StatelessWidget {
  static const EdgeInsets _iconPadding = EdgeInsets.fromLTRB(10, 0, 0, 0);
  static const EdgeInsets _textPadding = EdgeInsets.symmetric(horizontal: 10.0);
  static const double _iconSize = 26.0;
  static const double _drawerHeaderHeight = 75.0;
  static const double _headingFontSize = 36.0;

  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppStyle.backgroundColor,
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: _drawerHeaderHeight,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppStyle.mainThemeAccent,
              ),
              child: Center(
                child: Text(
                  'Menu',
                  style: AppStyle.defaultTextStyle.copyWith(fontSize: _headingFontSize),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const HistoryScreen();
                  },
                ),
              );
            },
            child: Row(
              children: const [
                Padding(
                  padding: _iconPadding,
                  child: Icon(
                    Icons.history_outlined,
                    size: _iconSize,
                  ),
                ),
                Padding(
                  padding: _textPadding,
                  child: Text(
                    'Last recipes',
                    style: AppStyle.defaultTextStyle,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const AboutScreen();
                  },
                ),
              );
            },
            child: Row(
              children: const [
                Padding(
                  padding: _iconPadding,
                  child: Icon(
                    Icons.info_outlined,
                    size: _iconSize,
                  ),
                ),
                Padding(
                  padding: _textPadding,
                  child: Text(
                    'About app',
                    style: AppStyle.defaultTextStyle,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
