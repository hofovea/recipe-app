import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/presentation/blocs/connectivity_bloc/connectivity_bloc.dart';
import 'package:recipe_app/presentation/blocs/history_bloc/history_bloc.dart';
import 'package:recipe_app/presentation/blocs/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
import 'package:recipe_app/presentation/routing/app_router.gr.dart';
import 'package:recipe_app/presentation/screens/logo_screen/logo_screen.dart';
import 'package:recipe_app/presentation/style/app_style.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'di_container.dart' as di;
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await di.init();
  await di.serviceLocator.allReady();
  runApp(App());
}

class App extends StatelessWidget {
  App({super.key});

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.serviceLocator<ConnectivityBloc>()
        ..add(const ConnectivityEvent.listenToConnectionState()),
      child: MaterialApp.router(
        theme: ThemeData(
          primarySwatch: AppStyle.mainThemeColor,
        ),
        supportedLocales: const [
          Locale('en', 'US'),
          Locale('uk', 'UA'),
        ],
        localizationsDelegates: const [
          AppLocalizations.delegate,
          ...GlobalMaterialLocalizations.delegates,
          GlobalWidgetsLocalizations.delegate,
        ],
        localeResolutionCallback: (locale, supportedLocales) {
          if (locale != null) {
            for (Locale supportedLocale in supportedLocales) {
              if (supportedLocale.languageCode == locale.languageCode &&
                  supportedLocale.countryCode == locale.countryCode) {
                return supportedLocale;
              }
            }
          }
          return supportedLocales.first;
        },
        routerDelegate: _appRouter.delegate(),
        routeInformationParser: _appRouter.defaultRouteParser(),
      ),
    );
  }
}
