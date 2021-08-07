import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GeneralTheme {
  static theme() => ThemeData(
        textTheme: TextTheme(
            headline1: GoogleFonts.getFont('Quicksand',
                fontSize: 25, fontWeight: FontWeight.w500),
            headline2: GoogleFonts.getFont('Quicksand',
                fontSize: 35, fontWeight: FontWeight.w700)),
      );
}
