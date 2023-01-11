import 'package:auto_route/auto_route.dart';
import 'package:recipe_app/presentation/screens/history_screen/history_screen.dart';
import 'package:recipe_app/presentation/screens/logo_screen/logo_screen.dart';
import 'package:recipe_app/presentation/screens/recipe_screen/recipe_screen.dart';
import 'package:recipe_app/presentation/screens/search_screen/search_screen.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LogoScreen, initial: true),
    AutoRoute(page: SearchScreen),
    AutoRoute(page: HistoryScreen),
    AutoRoute(page: RecipeScreen),
  ],
)
class $AppRouter {}
