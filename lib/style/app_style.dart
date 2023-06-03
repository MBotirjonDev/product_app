import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppStyle {
  static Color mainColor = const Color(0xFF000633);
  static Color accentColor = const Color(0xFF0065FF);
  static Color amberColor = const Color(0xFFFFBF00);
  static Color blackColor = const Color(0xFF000000);
  static Color detailColorF = const Color(0xFF8DCED8);
  static Color detailColorS = const Color(0xFFF8EAE9);
  static Color buttomColor = const Color(0xFF11193A);

  static List<Color> cardsColor = [
    Colors.white,
    Colors.red.shade100,
    Colors.pink.shade100,
    Colors.orange.shade100,
    Colors.yellow.shade100,
    Colors.green.shade100,
    Colors.blue.shade100,
    Colors.blueGrey.shade100,
    Colors.amber.shade400,
  ];

  static TextStyle mainTitle = GoogleFonts.roboto(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: AppStyle.blackColor,
  );
  static TextStyle contentTitle = GoogleFonts.nunito(
    fontSize: 16.0,
    fontWeight: FontWeight.normal,
  );
  static TextStyle dateTitle = GoogleFonts.roboto(
    fontSize: 13.0,
    fontWeight: FontWeight.w500,
  );
}
