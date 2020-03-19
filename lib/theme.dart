import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'constants/color_constants.dart';

final colorScheme = ColorScheme(
  primary: primary,
  primaryVariant: primaryVariant,
  secondary: secondary,
  secondaryVariant: secondaryVariant,
  background: background,
  surface: surface,
  error: error,
  onPrimary: onPrimary,
  onSecondary: onSecondary,
  onBackground: onBackground,
  onSurface: onSurface,
  onError: onError,
  brightness: brightness,
);

ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: primary,
      accentColor: secondary,
      colorScheme: colorScheme,
      appBarTheme: AppBarTheme(
        iconTheme: IconThemeData(
          color: onPrimary,
        ),
        textTheme: Theme.of(context).primaryTextTheme.apply(
              bodyColor: onPrimary,
            ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      inputDecorationTheme: InputDecorationTheme(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 0.0,
          horizontal: 10,
        ),
        labelStyle: TextStyle(color: colorScheme.primaryVariant),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(width: 2, color: colorScheme.primaryVariant),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: Colors.grey),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          borderSide: BorderSide(color: colorScheme.primary),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: Colors.black),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4)),
          borderSide: BorderSide(color: colorScheme.error),
        ),
      ),
      dividerColor: primary,
      textTheme: GoogleFonts.ralewayTextTheme(textTheme),
      iconTheme: IconThemeData(color: Colors.white),
      tabBarTheme: TabBarTheme(
        labelColor: onPrimary,
        indicator: UnderlineTabIndicator(
          insets: EdgeInsets.symmetric(horizontal: 10),
          borderSide: BorderSide(
            color: onPrimary,
            width: 3,
          ),
        ),
      ),

//   buttonTheme: ButtonThemeData(),
    );
final darkTheme = ThemeData();

final textTheme = TextTheme(
  title: TextStyle(
      color: colorScheme.primary, fontSize: 24, fontWeight: FontWeight.w800),
  caption: TextStyle(color: colorScheme.secondaryVariant, fontSize: 12),
  button: TextStyle(color: Colors.black, fontWeight: FontWeight.w800),
);
