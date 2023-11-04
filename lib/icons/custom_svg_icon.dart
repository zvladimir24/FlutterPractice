import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomSvgIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/Icons.svg', // Replace with the actual path to your SVG icon asset
      width: 34, // Adjust the width and height as needed
      height: 34,
    );
  }
}
