import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import 'colors.dart';

ThemeData lightTheme = ThemeData(
    colorScheme:ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFFF6E37),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Colors.white,
      onSecondary: Color(0xFFFFFFFF),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      background: Color(0xFFFEFFFF),
      onBackground: Color(0xFF3b3b3b),
      surface: Color(0xFFFEFFFF),
      onSurface: Color(0xFF3b3b3b),
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      titleSpacing: 20,
      backgroundColor: Colors.blue,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.blue,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: Color(0xFFFF6E37),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 20),
    textTheme: TextTheme(
      displayLarge: const TextStyle(
        fontSize: 72,
        fontWeight: FontWeight.bold,
      ),
      // ···
      titleLarge: GoogleFonts.oswald(
        fontSize: 30,
        fontStyle: FontStyle.italic,

      ),
      bodyMedium: GoogleFonts.merriweather(
        color: Colors.black
      ),
      displayMedium: GoogleFonts.merriweather(
          color: Colors.black

      ),
      displaySmall: GoogleFonts.pacifico(
          color: Colors.black
      ),

    ),

);

ThemeData darkTheme = ThemeData(
    primarySwatch: Colors.orange,
    scaffoldBackgroundColor: Colors.black12,
    appBarTheme: AppBarTheme(
      titleSpacing: 20,
      backgroundColor: Colors.black12,
      elevation: 0.0,
      iconTheme: IconThemeData(color: Colors.white),
      titleTextStyle: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: Colors.black12,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.black12,
        selectedItemColor: Colors.deepOrange,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        elevation: 20),
    floatingActionButtonTheme:
    FloatingActionButtonThemeData(backgroundColor: Colors.deepOrange),
    textTheme: TextTheme(
    displayLarge: const TextStyle(
      fontSize: 72,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),
    // ···
    titleLarge: GoogleFonts.oswald(
      fontSize: 30,
      fontStyle: FontStyle.italic,
        color: Colors.white

    ),
    bodyMedium: GoogleFonts.merriweather(
        color: Colors.white
    ),
    displayMedium: GoogleFonts.merriweather(
        color: Colors.white

    ),
    displaySmall: GoogleFonts.pacifico(
        color: Colors.white
    ),

  ),

);
