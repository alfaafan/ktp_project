import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
        colorSchemeSeed: Colors.black,
        appBarTheme: const AppBarTheme(
            color: Colors.black,
            shadowColor: Colors.grey,
            elevation: 10,
            titleTextStyle: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
            iconTheme: IconThemeData(color: Colors.white)),
        fontFamily: GoogleFonts.poppins().fontFamily,
        textTheme: TextTheme(
            displayLarge:
                const TextStyle(fontSize: 72, fontWeight: FontWeight.bold),
            titleLarge: GoogleFonts.poppins(
              fontWeight: FontWeight.bold,
              // color: Colors.cyanAccent
            ),
            titleMedium: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            titleSmall: GoogleFonts.poppins(fontWeight: FontWeight.bold),
            bodyMedium: GoogleFonts.poppins(fontWeight: FontWeight.normal)));
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(colorSchemeSeed: Colors.black45);
  }
}
