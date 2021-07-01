import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QueryWizardThemeData {
  // This class is not meant to be instantiated or extended; this constructor
  // prevents instantiation and extension.
  QueryWizardThemeData._();

  static const _lightFillColor = Color(0xFF606060);
  static const _darkFillColor = Colors.white;

  static final Color _lightFocusColor = Colors.black.withOpacity(0.12);
  static final Color _darkFocusColor = Colors.white.withOpacity(0.12);

  static ThemeData lightThemeData =
      themeData(lightColorScheme, _lightFocusColor);
  static ThemeData darkThemeData = themeData(darkColorScheme, _darkFocusColor);

  static ThemeData themeData(ColorScheme colorScheme, Color focusColor) {
    return ThemeData(
      colorScheme: colorScheme,
      textTheme: _textTheme,
      // Matches manifest.json colors and background color.
      primaryColor: const Color(0xFF606060),
      appBarTheme: AppBarTheme(
        textTheme: _textTheme.apply(bodyColor: colorScheme.onPrimary),
        color: colorScheme.surface,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF7A7A7A)),
        titleTextStyle: const TextStyle(color: Color(0xFF7A7A7A)),
        brightness: colorScheme.brightness,
      ),
      navigationRailTheme: const NavigationRailThemeData(
        backgroundColor: Color(0xFF2C2C2C),
        selectedIconTheme: IconThemeData(color: Color(0xFFFDFDFD)),
        selectedLabelTextStyle: TextStyle(color: Color(0xFFFDFDFD)),
        unselectedIconTheme: IconThemeData(color: Color(0xFF7F7F7F)),
        unselectedLabelTextStyle: TextStyle(color: Color(0xFF7F7F7F)),
      ),
      tabBarTheme: const TabBarTheme(
        labelColor: Color(0xFF333333),
        unselectedLabelColor: Color(0xFF696969),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Color(0xFF0079CA),
        selectedItemColor: Color(0xFFFDFDFD),
        unselectedItemColor: Color(0xFFCBCBCB),
      ),
      iconTheme: IconThemeData(color: colorScheme.onPrimary),
      canvasColor: colorScheme.background,
      scaffoldBackgroundColor: colorScheme.background,
      highlightColor: Colors.transparent,
      focusColor: focusColor,
      snackBarTheme: SnackBarThemeData(
        behavior: SnackBarBehavior.floating,
        backgroundColor: Color.alphaBlend(
          _lightFillColor.withOpacity(0.80),
          _darkFillColor,
        ),
        contentTextStyle: _textTheme.subtitle1?.apply(color: _darkFillColor),
      ),
    );
  }

  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFF606060),
    primaryVariant: Color(0xFF117378),
    secondary: Color(0xFFEFF3F3),
    secondaryVariant: Color(0xFFFAFBFB),
    background: Color(0xFFFDFDFD),
    surface: Color(0xFFE3E3E3),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFFFFFF),
    primaryVariant: Color(0xFF494C50),
    secondary: Color(0xFF494C50),
    secondaryVariant: Color(0x0DFFFFFF),
    background: Color(0xFF1E1E1E),
    surface: Color(0xFF323233),
    onBackground: Color(0xFF262626),
    // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  static const _regular = FontWeight.w400;
  static const _medium = FontWeight.w500;
  static const _semiBold = FontWeight.w600;
  static const _bold = FontWeight.w700;

  static final TextTheme _textTheme = TextTheme(
    headline4: GoogleFonts.montserrat(fontWeight: _bold, fontSize: 20.0),
    caption: GoogleFonts.oswald(fontWeight: _semiBold, fontSize: 16.0),
    headline5: GoogleFonts.oswald(fontWeight: _medium, fontSize: 16.0),
    subtitle1: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 16.0),
    overline: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 12.0),
    bodyText1: GoogleFonts.montserrat(fontWeight: _regular, fontSize: 14.0),
    subtitle2: GoogleFonts.montserrat(fontWeight: _medium, fontSize: 14.0),
    bodyText2: GoogleFonts.montserrat(fontWeight: _regular, fontSize: 16.0),
    headline6: GoogleFonts.montserrat(fontWeight: _bold, fontSize: 16.0),
    button: GoogleFonts.montserrat(fontWeight: _semiBold, fontSize: 14.0),
  );
}
