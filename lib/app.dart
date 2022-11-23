
import 'package:codewars2/gov/pages/landing.dart';
import 'package:codewars2/pages/home_page.dart';
import 'package:codewars2/l10n/l10n.dart';
import 'package:codewars2/provider/app_provider.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AppProvider(),
        ),
      ],
      child: MaterialApp(
        theme: FlexThemeData.light(
          scheme: FlexScheme.blue,
          surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
          blendLevel: 9,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 10,
            blendOnColors: false,
          ),
          fontFamily: "Graphik",
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
        ),
        themeMode: ThemeMode.light,
        darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.custom,
          surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
          blendLevel: 15,
          subThemesData: const FlexSubThemesData(
            blendOnLevel: 20,
          ),
          fontFamily: "Graphik",
          visualDensity: FlexColorScheme.comfortablePlatformDensity,
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const Landing(),
      ),
    );
  }
}
