import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:learnflow_backoffice/screens/login_screen.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Made for FlexColorScheme version 7.0.0. Make sure you
      // use same or higher package version, but still same major version.
      // If you use a lower version, some properties may not be supported.
      // In that case remove them after copying this theme to your app.
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xffffa384),
          primaryContainer: Color(0xffff7d51),
          secondary: Color(0xff74bdcb),
          secondaryContainer: Color(0xffe7f2f8),
          tertiary: Color(0xffefe7bc),
          tertiaryContainer: Color(0xffe5d893),
          appBarColor: Color(0xffe7f2f8),
          error: Color(0xffb00020),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        appBarStyle: FlexAppBarStyle.primary,
        subThemesData: const FlexSubThemesData(
          useFlutterDefaults: true,
          useTextTheme: true,
          defaultRadius: 20.0,
          textButtonRadius: 5.0,
          filledButtonRadius: 5.0,
          elevatedButtonRadius: 5.0,
          outlinedButtonRadius: 5.0,
          inputDecoratorBackgroundAlpha: 51,
          inputDecoratorUnfocusedHasBorder: false,
        ),
        keyColors: const FlexKeyColors(
          useSecondary: true,
          useTertiary: true,
          keepPrimary: true,
          keepSecondary: true,
          keepTertiary: true,
          keepPrimaryContainer: true,
          keepSecondaryContainer: true,
          keepTertiaryContainer: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        // To use the playground font, add GoogleFonts package and uncomment
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      darkTheme: FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xffffa384),
          primaryContainer: Color(0xff000000),
          secondary: Color(0xff74bdcb),
          secondaryContainer: Color(0xff334b4f),
          tertiary: Color(0xffefe7bc),
          tertiaryContainer: Color(0xffe5d893),
          appBarColor: Color(0xff334b4f),
          error: Color(0xffcf6679),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          useFlutterDefaults: true,
          useTextTheme: true,
          defaultRadius: 20.0,
          textButtonRadius: 5.0,
          filledButtonRadius: 5.0,
          elevatedButtonRadius: 5.0,
          outlinedButtonRadius: 5.0,
          inputDecoratorSchemeColor: SchemeColor.secondary,
          inputDecoratorUnfocusedHasBorder: false,
        ),
        keyColors: const FlexKeyColors(
          useSecondary: true,
          useTertiary: true,
          keepPrimary: true,
          keepSecondary: true,
          keepTertiary: true,
          keepPrimaryContainer: true,
          keepSecondaryContainer: true,
          keepTertiaryContainer: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        // To use the Playground font, add GoogleFonts package and uncomment
        fontFamily: GoogleFonts.inter().fontFamily,
      ),
      // If you do not have a themeMode switch, uncomment this line
      // to let the device system mode control the theme mode:
      themeMode: ThemeMode.light,
      home: const LoginScreen(),
    );
  }
}
