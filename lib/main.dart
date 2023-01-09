import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipe_app/presentation/blocs/history_bloc/history_bloc.dart';
import 'package:recipe_app/presentation/blocs/recipe_bloc/recipe_bloc.dart';
import 'package:recipe_app/presentation/localizations/app_localizations.dart';
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
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => di.serviceLocator<RecipeBloc>(),
        ),
        BlocProvider(
          create: (context) => di.serviceLocator<HistoryBloc>(),
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
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
        home: const LogoScreen(),
      ),
    );
  }
}
