import 'package:flutter/material.dart';

class AppStyles {
  // Other styles...

  // BodyText2
  static const TextStyle bodyText2 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: Color(0xFF173F5F), // Use Navy color
    height: 1.375, // Equivalent to line-height: 22px; /* 137.5% */
  );

  // Other styles...

  // BodyText5
  static const TextStyle bodyText5 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 12,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w300,
    color: Color(0xFF173F5F),
    height: 1.41667, // Equivalent to line-height: 17px; /* 141.667% */
  );

// BodyText6
  static const TextStyle bodyText6 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 14,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w600,
    color: Color(0xFFFFFFFF), // Use White color
    height: 1.42857, // Equivalent to line-height: 20px; /* 142.857% */
  );

  // BodyText1
  static const TextStyle bodyText1 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 16,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w500,
    color: Color(0xFF173F5F),
    height: 1.375, // Equivalent to line-height: 22px; /* 137.5% */
  );

  // CustomOrangeButton1
  static final ButtonStyle customOrangeButton1 = ElevatedButton.styleFrom(
    backgroundColor: Color(0xFFF89438),
    minimumSize: Size(87, 24),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4),
    ),
  );
  // Shadow2
  static const BoxDecoration shadow2 = BoxDecoration(
    boxShadow: [
      BoxShadow(
        color: Color.fromRGBO(174, 187, 207, 0.35),
        offset: Offset(0, 0),
        blurRadius: 15,
        spreadRadius: 0,
      ),
    ],
  );
  // BodyText3
  static const TextStyle bodyText3 = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontStyle: FontStyle.normal,
    fontWeight: FontWeight.w700,
    color: Color(0xFF173F5F), // Use Navy color
    height: 1.33333, // Equivalent to line-height: 24px; /* 133.333% */
  );
}
