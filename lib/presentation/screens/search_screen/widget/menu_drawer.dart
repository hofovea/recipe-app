import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app/presentation/blocs/history_bloc/history_bloc.dart';
import 'package:recipe_app/presentation/blocs/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_app/presentation/screens/history_screen/history_screen.dart';
import 'package:recipe_app/presentation/style/app_style.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  static const platform = MethodChannel('channels/app_version');
  static const EdgeInsets _iconPadding = EdgeInsets.fromLTRB(10, 0, 0, 0);
  static const EdgeInsets _textPadding = EdgeInsets.symmetric(horizontal: 10.0);
  static const double _iconSize = 26.0;
  static const double _drawerHeaderHeight = 75.0;
  static const double _headingFontSize = 36.0;
  bool _visible = false;
  static const Duration _duration = Duration(seconds: 3);
  static const Duration _showAboutDuration = Duration(seconds: 5);
  static const double _minOpacity = 0.0;
  static const double _maxOpacity = 1.0;
  String _appVersion = 'Not available';

  @override
  Widget build(BuildContext context) {
    final bool isConnected = Provider.of<bool>(context);
    return Drawer(
      backgroundColor: AppStyle.backgroundColor,
      child: Column(
        // padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: _drawerHeaderHeight,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: AppStyle.mainThemeAccent,
              ),
              child: Center(
                child: Text(
                  AppLocalizations.of(context)!.translate('menu')!,
                  style: AppStyle.defaultTextStyle.copyWith(fontSize: _headingFontSize),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (isConnected) {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return HistoryScreen(bloc: BlocProvider.of<HistoryBloc>(context));
                    },
                  ),
                );
              }
            },
            child: Row(
              children: [
                const Padding(
                  padding: _iconPadding,
                  child: Icon(
                    Icons.history_outlined,
                    size: _iconSize,
                  ),
                ),
                Padding(
                  padding: _textPadding,
                  child: Text(
                    AppLocalizations.of(context)!.translate('history')!,
                    style: AppStyle.defaultTextStyle,
                  ),
                )
              ],
            ),
          ),
          InkWell(
            onTap: () async {
              String result = await platform.invokeMethod('getAppVersion');
              setState(
                () {
                  _appVersion = result;
                  _visible = true;
                  Timer(
                    _showAboutDuration,
                    () {
                      setState(() {
                        _visible = false;
                      });
                    },
                  );
                },
              );
            },
            child: Row(
              children: [
                const Padding(
                  padding: _iconPadding,
                  child: Icon(
                    Icons.info_outlined,
                    size: _iconSize,
                  ),
                ),
                Padding(
                  padding: _textPadding,
                  child: Text(
                    AppLocalizations.of(context)!.translate('about')!,
                    style: AppStyle.defaultTextStyle,
                  ),
                )
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: AnimatedOpacity(
              opacity: _visible ? _maxOpacity : _minOpacity,
              duration: _duration,
              child: Text('${AppLocalizations.of(context)!.translate('version')!} $_appVersion'),
            ),
          ),
        ],
      ),
    );
  }
}
