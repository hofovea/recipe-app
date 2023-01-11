// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;
import 'package:recipe_app/domain/entities/recipe.dart' as _i7;
import 'package:recipe_app/presentation/screens/history_screen/history_screen.dart'
    as _i3;
import 'package:recipe_app/presentation/screens/logo_screen/logo_screen.dart'
    as _i1;
import 'package:recipe_app/presentation/screens/recipe_screen/recipe_screen.dart'
    as _i4;
import 'package:recipe_app/presentation/screens/search_screen/search_screen.dart'
    as _i2;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    LogoRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.LogoScreen(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.SearchScreen(),
      );
    },
    HistoryRoute.name: (routeData) {
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i3.HistoryScreen(),
      );
    },
    RecipeRoute.name: (routeData) {
      final args = routeData.argsAs<RecipeRouteArgs>();
      return _i5.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i4.RecipeScreen(
          key: args.key,
          recipe: args.recipe,
          tag: args.tag,
        ),
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          LogoRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          SearchRoute.name,
          path: '/search-screen',
        ),
        _i5.RouteConfig(
          HistoryRoute.name,
          path: '/history-screen',
        ),
        _i5.RouteConfig(
          RecipeRoute.name,
          path: '/recipe-screen',
        ),
      ];
}

/// generated route for
/// [_i1.LogoScreen]
class LogoRoute extends _i5.PageRouteInfo<void> {
  const LogoRoute()
      : super(
          LogoRoute.name,
          path: '/',
        );

  static const String name = 'LogoRoute';
}

/// generated route for
/// [_i2.SearchScreen]
class SearchRoute extends _i5.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: '/search-screen',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i3.HistoryScreen]
class HistoryRoute extends _i5.PageRouteInfo<void> {
  const HistoryRoute()
      : super(
          HistoryRoute.name,
          path: '/history-screen',
        );

  static const String name = 'HistoryRoute';
}

/// generated route for
/// [_i4.RecipeScreen]
class RecipeRoute extends _i5.PageRouteInfo<RecipeRouteArgs> {
  RecipeRoute({
    _i6.Key? key,
    required _i7.Recipe recipe,
    required String tag,
  }) : super(
          RecipeRoute.name,
          path: '/recipe-screen',
          args: RecipeRouteArgs(
            key: key,
            recipe: recipe,
            tag: tag,
          ),
        );

  static const String name = 'RecipeRoute';
}

class RecipeRouteArgs {
  const RecipeRouteArgs({
    this.key,
    required this.recipe,
    required this.tag,
  });

  final _i6.Key? key;

  final _i7.Recipe recipe;

  final String tag;

  @override
  String toString() {
    return 'RecipeRouteArgs{key: $key, recipe: $recipe, tag: $tag}';
  }
}
