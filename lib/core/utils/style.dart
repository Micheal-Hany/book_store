import 'package:book_store/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class Style {
  static const textStyle18 =
      TextStyle(fontSize: 18, fontWeight: FontWeight.w600);
  static const textStyle20 = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.normal,
  );
  static const textStyle14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static const textStyle16 =
      TextStyle(fontSize: 16, fontWeight: FontWeight.w500);
  static const textStyle30 = TextStyle(
      fontSize: 30, fontWeight: FontWeight.normal, fontFamily: kGetSectrFine);
}
